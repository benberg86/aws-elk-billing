#!/bin/bash

#Set default index without going to Kibana frontend

curl "http://elasticsearch:9200/.kibana/config/4.5.0/_update" -d '{"doc": {"buildNum": 9889, "defaultIndex": "aws-billing*"}}'

#Create kibana index_pattern
# The content for this JSON is taken from template type

curl "http://elasticsearch:9200/.kibana/index-pattern/aws-billing-*" -d '{"title" : "aws-billing-*", "timeFieldName" : "lineItem/UsageStartDate", "fields" : "[{\"name\":\"lineItem/ProductCode.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/toLocation.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/UsageAmount.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/BlendedRate.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/servicecode\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"identity/LineItemId\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/description.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/productFamily\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/Operation\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/maxThroughputvolume\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/volumeType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/availability.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/AvailabilityZone\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"host\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/groupDescription\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/Operation.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"bill/InvoiceId.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"_index\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":false,\"analyzed\":false,\"doc_values\":false},{\"name\":\"product/fromLocation.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"identity/LineItemId.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/vcpu\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/processorFeatures.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/UsageType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/locationType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/maxVolumeSize.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"bill/BillType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"@timestamp\",\"type\":\"date\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/location\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/maxIopsBurstPerformance\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"bill/InvoiceId\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/networkPerformance.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/physicalProcessor\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/instanceType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"port\",\"type\":\"number\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/maxIopsBurstPerformance.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"bill/PayerAccountId.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/sku.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"@version\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/volumeType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/processorArchitecture\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/UsageAccountId.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/memory\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"host.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/UnblendedRate\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/AvailabilityZone.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/TaxType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/routingTarget\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/LineItemType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/operatingSystem\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/storageClass\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/sku\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/UnblendedCost\",\"type\":\"number\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/fromLocationType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"identity/TimeInterval.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/availability\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/requestDescription.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"type.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/memory.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/storageMedia.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"bill/BillingPeriodStartDate\",\"type\":\"date\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/maxVolumeSize\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/storage\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/UsageType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/CurrencyCode\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/ProductName\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/routingType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/preInstalledSw\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/instanceType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"_source\",\"type\":\"_source\",\"count\":0,\"scripted\":false,\"indexed\":false,\"analyzed\":false,\"doc_values\":false},{\"name\":\"lineItem/UsageEndDate\",\"type\":\"date\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/maxIopsvolume\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/BlendedCost\",\"type\":\"number\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"pricing/term.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"type\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/licenseModel.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"bill/BillingEntity.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/requestDescription\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"bill/BillType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/servicecode.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/clockSpeed.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/maxIopsvolume.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/BlendedRate\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/productFamily.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/LineItemDescription.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/UsageAccountId\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/fromLocationType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/instanceFamily\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"index\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/routingType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/UsageAmount\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/durability.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/LineItemDescription\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/storage.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/vcpu.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/TaxType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/networkPerformance\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/operatingSystem.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/clockSpeed\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/preInstalledSw.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"pricing/term\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/usagetype.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/operation.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/tenancy\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/toLocationType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"bill/BillingPeriodEndDate\",\"type\":\"date\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/transferType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/description\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/transferType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"lineItem/UnblendedRate.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/tenancy.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/usagetype\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/storageMedia\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/toLocation\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/UsageStartDate\",\"type\":\"date\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/durability\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/fromLocation\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/routingTarget.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"identity/TimeInterval\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/group\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"bill/BillingEntity\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/group.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/licenseModel\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/requestType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/storageClass.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/toLocationType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/operation\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/ProductCode\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/CurrencyCode.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/processorArchitecture.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/locationType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"bill/PayerAccountId\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"lineItem/LineItemType\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/groupDescription.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/requestType.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/instanceFamily.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"index.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/processorFeatures\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":true,\"doc_values\":false},{\"name\":\"product/physicalProcessor.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/maxThroughputvolume.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/location.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"product/ProductName.keyword\",\"type\":\"keyword\",\"count\":0,\"scripted\":false,\"indexed\":true,\"analyzed\":false,\"doc_values\":true},{\"name\":\"_id\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":false,\"analyzed\":false,\"doc_values\":false},{\"name\":\"_type\",\"type\":\"text\",\"count\":0,\"scripted\":false,\"indexed\":false,\"analyzed\":false,\"doc_values\":false},{\"name\":\"_score\",\"type\":\"number\",\"count\":0,\"scripted\":false,\"indexed\":false,\"analyzed\":false,\"doc_values\":false}]"}'
