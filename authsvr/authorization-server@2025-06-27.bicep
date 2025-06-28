type application = {
  tenant: string
  applicationName: string
  location: {
    name: string
    shortName: string
  }
  tags: object
  applicationInsightsName: string
  logAnalyticsWorkspace: {
    name: string
    retentionInDays: int
  }
}

var applicationName = 'AuthSvr'

var locationShortNames = {
  'East US': 'eus'
  'West US': 'wus'
  'Central US': 'cus'
  // Add more locations as needed
}

@export()
func getApplication(tenant string, location string, moduleName string, repositoryName string) application => {
  tenant: toLower(tenant)
  applicationName: applicationName
  location: {
    name: location
    shortName: locationShortNames[location]
  }
  tags: {
    ModuleName: moduleName
    RepositoryName: repositoryName
    Tenant: toLower(tenant)
    ApplicationName: applicationName
  }
  applicationInsightsName: '${applicationName}-${toLower(tenant)}-ai-${locationShortNames[location]}'
  logAnalyticsWorkspace: {
    name: '${applicationName}-${toLower(tenant)}-la-${locationShortNames[location]}'
    retentionInDays: 30
  }
}


