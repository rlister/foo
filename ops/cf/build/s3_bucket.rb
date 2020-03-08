resource :S3Bucket, 'AWS::S3::Bucket', DeletionPolicy: :Retain do
  tag :Stack, Fn::ref('AWS::StackName')
  tag 'ap:delete', :DELETE_ORPHAN
  access_control 'LogDeliveryWrite'
  logging_configuration(
    DestinationBucketName: Fn::sub('s3log-${AWS::AccountId}'),
    LogFilePrefix: Fn::sub('${AWS::StackName}/')
  )
  public_access_block_configuration(
    BlockPublicAcls: true,
    BlockPublicPolicy: true,
    IgnorePublicAcls: true,
    RestrictPublicBuckets: true
  )
end

output :S3Bucket, Fn::ref(:S3Bucket)
