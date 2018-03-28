## Module AWS.Budgets.Types

#### `options`

``` purescript
options :: Options
```

#### `AccountId`

``` purescript
newtype AccountId
  = AccountId String
```

<p>The account ID of the customer. It should be a 12 digit number.</p>

##### Instances
``` purescript
Newtype AccountId _
Generic AccountId _
Show AccountId
Decode AccountId
Encode AccountId
```

#### `Budget`

``` purescript
newtype Budget
  = Budget { "BudgetName" :: BudgetName, "BudgetLimit" :: NullOrUndefined (Spend), "CostFilters" :: NullOrUndefined (CostFilters), "CostTypes" :: NullOrUndefined (CostTypes), "TimeUnit" :: TimeUnit, "TimePeriod" :: NullOrUndefined (TimePeriod), "CalculatedSpend" :: NullOrUndefined (CalculatedSpend), "BudgetType" :: BudgetType }
```

<p>Represents the output of the <code>CreateBudget</code> operation. The content consists of the detailed metadata and data file information, and the current status of the <code>budget</code>.</p> <p>The ARN pattern for a budget is: <code>arn:aws:budgetservice::AccountId:budget/budgetName</code> </p>

##### Instances
``` purescript
Newtype Budget _
Generic Budget _
Show Budget
Decode Budget
Encode Budget
```

#### `newBudget`

``` purescript
newBudget :: BudgetName -> BudgetType -> TimeUnit -> Budget
```

Constructs Budget from required parameters

#### `newBudget'`

``` purescript
newBudget' :: BudgetName -> BudgetType -> TimeUnit -> ({ "BudgetName" :: BudgetName, "BudgetLimit" :: NullOrUndefined (Spend), "CostFilters" :: NullOrUndefined (CostFilters), "CostTypes" :: NullOrUndefined (CostTypes), "TimeUnit" :: TimeUnit, "TimePeriod" :: NullOrUndefined (TimePeriod), "CalculatedSpend" :: NullOrUndefined (CalculatedSpend), "BudgetType" :: BudgetType } -> { "BudgetName" :: BudgetName, "BudgetLimit" :: NullOrUndefined (Spend), "CostFilters" :: NullOrUndefined (CostFilters), "CostTypes" :: NullOrUndefined (CostTypes), "TimeUnit" :: TimeUnit, "TimePeriod" :: NullOrUndefined (TimePeriod), "CalculatedSpend" :: NullOrUndefined (CalculatedSpend), "BudgetType" :: BudgetType }) -> Budget
```

Constructs Budget's fields from required parameters

#### `BudgetName`

``` purescript
newtype BudgetName
  = BudgetName String
```

<p> A string represents the budget name. No ":" and "\" character is allowed.</p>

##### Instances
``` purescript
Newtype BudgetName _
Generic BudgetName _
Show BudgetName
Decode BudgetName
Encode BudgetName
```

#### `BudgetType`

``` purescript
newtype BudgetType
  = BudgetType String
```

<p> The type of a budget. It should be COST, USAGE, or RI_UTILIZATION.</p>

##### Instances
``` purescript
Newtype BudgetType _
Generic BudgetType _
Show BudgetType
Decode BudgetType
Encode BudgetType
```

#### `Budgets`

``` purescript
newtype Budgets
  = Budgets (Array Budget)
```

<p> A list of budgets</p>

##### Instances
``` purescript
Newtype Budgets _
Generic Budgets _
Show Budgets
Decode Budgets
Encode Budgets
```

#### `CalculatedSpend`

``` purescript
newtype CalculatedSpend
  = CalculatedSpend { "ActualSpend" :: Spend, "ForecastedSpend" :: NullOrUndefined (Spend) }
```

<p>The spend objects associated with this budget. The <code>actualSpend</code> tracks how much you've used, cost, usage, or RI units, and the <code>forecastedSpend</code> tracks how much you are predicted to spend if your current usage remains steady.</p> <p>For example, if it is the 20th of the month and you have spent <code>50</code> dollars on Amazon EC2, your <code>actualSpend</code> is <code>50 USD</code>, and your <code>forecastedSpend</code> is <code>75 USD</code>.</p>

##### Instances
``` purescript
Newtype CalculatedSpend _
Generic CalculatedSpend _
Show CalculatedSpend
Decode CalculatedSpend
Encode CalculatedSpend
```

#### `newCalculatedSpend`

``` purescript
newCalculatedSpend :: Spend -> CalculatedSpend
```

Constructs CalculatedSpend from required parameters

#### `newCalculatedSpend'`

``` purescript
newCalculatedSpend' :: Spend -> ({ "ActualSpend" :: Spend, "ForecastedSpend" :: NullOrUndefined (Spend) } -> { "ActualSpend" :: Spend, "ForecastedSpend" :: NullOrUndefined (Spend) }) -> CalculatedSpend
```

Constructs CalculatedSpend's fields from required parameters

#### `ComparisonOperator`

``` purescript
newtype ComparisonOperator
  = ComparisonOperator String
```

<p> The comparison operator of a notification. Currently we support less than, equal to and greater than.</p>

##### Instances
``` purescript
Newtype ComparisonOperator _
Generic ComparisonOperator _
Show ComparisonOperator
Decode ComparisonOperator
Encode ComparisonOperator
```

#### `CostFilters`

``` purescript
newtype CostFilters
  = CostFilters (StrMap DimensionValues)
```

<p> A map that represents the cost filters applied to the budget.</p>

##### Instances
``` purescript
Newtype CostFilters _
Generic CostFilters _
Show CostFilters
Decode CostFilters
Encode CostFilters
```

#### `CostTypes`

``` purescript
newtype CostTypes
  = CostTypes { "IncludeTax" :: NullOrUndefined (NullableBoolean), "IncludeSubscription" :: NullOrUndefined (NullableBoolean), "UseBlended" :: NullOrUndefined (NullableBoolean), "IncludeRefund" :: NullOrUndefined (NullableBoolean), "IncludeCredit" :: NullOrUndefined (NullableBoolean), "IncludeUpfront" :: NullOrUndefined (NullableBoolean), "IncludeRecurring" :: NullOrUndefined (NullableBoolean), "IncludeOtherSubscription" :: NullOrUndefined (NullableBoolean), "IncludeSupport" :: NullOrUndefined (NullableBoolean), "IncludeDiscount" :: NullOrUndefined (NullableBoolean), "UseAmortized" :: NullOrUndefined (NullableBoolean) }
```

<p>The types of cost included in a budget, such as tax and subscriptions.</p>

##### Instances
``` purescript
Newtype CostTypes _
Generic CostTypes _
Show CostTypes
Decode CostTypes
Encode CostTypes
```

#### `newCostTypes`

``` purescript
newCostTypes :: CostTypes
```

Constructs CostTypes from required parameters

#### `newCostTypes'`

``` purescript
newCostTypes' :: ({ "IncludeTax" :: NullOrUndefined (NullableBoolean), "IncludeSubscription" :: NullOrUndefined (NullableBoolean), "UseBlended" :: NullOrUndefined (NullableBoolean), "IncludeRefund" :: NullOrUndefined (NullableBoolean), "IncludeCredit" :: NullOrUndefined (NullableBoolean), "IncludeUpfront" :: NullOrUndefined (NullableBoolean), "IncludeRecurring" :: NullOrUndefined (NullableBoolean), "IncludeOtherSubscription" :: NullOrUndefined (NullableBoolean), "IncludeSupport" :: NullOrUndefined (NullableBoolean), "IncludeDiscount" :: NullOrUndefined (NullableBoolean), "UseAmortized" :: NullOrUndefined (NullableBoolean) } -> { "IncludeTax" :: NullOrUndefined (NullableBoolean), "IncludeSubscription" :: NullOrUndefined (NullableBoolean), "UseBlended" :: NullOrUndefined (NullableBoolean), "IncludeRefund" :: NullOrUndefined (NullableBoolean), "IncludeCredit" :: NullOrUndefined (NullableBoolean), "IncludeUpfront" :: NullOrUndefined (NullableBoolean), "IncludeRecurring" :: NullOrUndefined (NullableBoolean), "IncludeOtherSubscription" :: NullOrUndefined (NullableBoolean), "IncludeSupport" :: NullOrUndefined (NullableBoolean), "IncludeDiscount" :: NullOrUndefined (NullableBoolean), "UseAmortized" :: NullOrUndefined (NullableBoolean) }) -> CostTypes
```

Constructs CostTypes's fields from required parameters

#### `CreateBudgetRequest`

``` purescript
newtype CreateBudgetRequest
  = CreateBudgetRequest { "AccountId" :: AccountId, "Budget" :: Budget, "NotificationsWithSubscribers" :: NullOrUndefined (NotificationWithSubscribersList) }
```

<p> Request of CreateBudget </p>

##### Instances
``` purescript
Newtype CreateBudgetRequest _
Generic CreateBudgetRequest _
Show CreateBudgetRequest
Decode CreateBudgetRequest
Encode CreateBudgetRequest
```

#### `newCreateBudgetRequest`

``` purescript
newCreateBudgetRequest :: AccountId -> Budget -> CreateBudgetRequest
```

Constructs CreateBudgetRequest from required parameters

#### `newCreateBudgetRequest'`

``` purescript
newCreateBudgetRequest' :: AccountId -> Budget -> ({ "AccountId" :: AccountId, "Budget" :: Budget, "NotificationsWithSubscribers" :: NullOrUndefined (NotificationWithSubscribersList) } -> { "AccountId" :: AccountId, "Budget" :: Budget, "NotificationsWithSubscribers" :: NullOrUndefined (NotificationWithSubscribersList) }) -> CreateBudgetRequest
```

Constructs CreateBudgetRequest's fields from required parameters

#### `CreateBudgetResponse`

``` purescript
newtype CreateBudgetResponse
  = CreateBudgetResponse NoArguments
```

<p> Response of CreateBudget </p>

##### Instances
``` purescript
Newtype CreateBudgetResponse _
Generic CreateBudgetResponse _
Show CreateBudgetResponse
Decode CreateBudgetResponse
Encode CreateBudgetResponse
```

#### `CreateNotificationRequest`

``` purescript
newtype CreateNotificationRequest
  = CreateNotificationRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscribers" :: Subscribers }
```

<p> Request of CreateNotification </p>

##### Instances
``` purescript
Newtype CreateNotificationRequest _
Generic CreateNotificationRequest _
Show CreateNotificationRequest
Decode CreateNotificationRequest
Encode CreateNotificationRequest
```

#### `newCreateNotificationRequest`

``` purescript
newCreateNotificationRequest :: AccountId -> BudgetName -> Notification -> Subscribers -> CreateNotificationRequest
```

Constructs CreateNotificationRequest from required parameters

#### `newCreateNotificationRequest'`

``` purescript
newCreateNotificationRequest' :: AccountId -> BudgetName -> Notification -> Subscribers -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscribers" :: Subscribers } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscribers" :: Subscribers }) -> CreateNotificationRequest
```

Constructs CreateNotificationRequest's fields from required parameters

#### `CreateNotificationResponse`

``` purescript
newtype CreateNotificationResponse
  = CreateNotificationResponse NoArguments
```

<p> Response of CreateNotification </p>

##### Instances
``` purescript
Newtype CreateNotificationResponse _
Generic CreateNotificationResponse _
Show CreateNotificationResponse
Decode CreateNotificationResponse
Encode CreateNotificationResponse
```

#### `CreateSubscriberRequest`

``` purescript
newtype CreateSubscriberRequest
  = CreateSubscriberRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscriber" :: Subscriber }
```

<p> Request of CreateSubscriber </p>

##### Instances
``` purescript
Newtype CreateSubscriberRequest _
Generic CreateSubscriberRequest _
Show CreateSubscriberRequest
Decode CreateSubscriberRequest
Encode CreateSubscriberRequest
```

#### `newCreateSubscriberRequest`

``` purescript
newCreateSubscriberRequest :: AccountId -> BudgetName -> Notification -> Subscriber -> CreateSubscriberRequest
```

Constructs CreateSubscriberRequest from required parameters

#### `newCreateSubscriberRequest'`

``` purescript
newCreateSubscriberRequest' :: AccountId -> BudgetName -> Notification -> Subscriber -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscriber" :: Subscriber } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscriber" :: Subscriber }) -> CreateSubscriberRequest
```

Constructs CreateSubscriberRequest's fields from required parameters

#### `CreateSubscriberResponse`

``` purescript
newtype CreateSubscriberResponse
  = CreateSubscriberResponse NoArguments
```

<p> Response of CreateSubscriber </p>

##### Instances
``` purescript
Newtype CreateSubscriberResponse _
Generic CreateSubscriberResponse _
Show CreateSubscriberResponse
Decode CreateSubscriberResponse
Encode CreateSubscriberResponse
```

#### `CreationLimitExceededException`

``` purescript
newtype CreationLimitExceededException
  = CreationLimitExceededException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>You've exceeded the notification or subscriber limit.</p>

##### Instances
``` purescript
Newtype CreationLimitExceededException _
Generic CreationLimitExceededException _
Show CreationLimitExceededException
Decode CreationLimitExceededException
Encode CreationLimitExceededException
```

#### `newCreationLimitExceededException`

``` purescript
newCreationLimitExceededException :: CreationLimitExceededException
```

Constructs CreationLimitExceededException from required parameters

#### `newCreationLimitExceededException'`

``` purescript
newCreationLimitExceededException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> CreationLimitExceededException
```

Constructs CreationLimitExceededException's fields from required parameters

#### `DeleteBudgetRequest`

``` purescript
newtype DeleteBudgetRequest
  = DeleteBudgetRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName }
```

<p> Request of DeleteBudget </p>

##### Instances
``` purescript
Newtype DeleteBudgetRequest _
Generic DeleteBudgetRequest _
Show DeleteBudgetRequest
Decode DeleteBudgetRequest
Encode DeleteBudgetRequest
```

#### `newDeleteBudgetRequest`

``` purescript
newDeleteBudgetRequest :: AccountId -> BudgetName -> DeleteBudgetRequest
```

Constructs DeleteBudgetRequest from required parameters

#### `newDeleteBudgetRequest'`

``` purescript
newDeleteBudgetRequest' :: AccountId -> BudgetName -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName }) -> DeleteBudgetRequest
```

Constructs DeleteBudgetRequest's fields from required parameters

#### `DeleteBudgetResponse`

``` purescript
newtype DeleteBudgetResponse
  = DeleteBudgetResponse NoArguments
```

<p> Response of DeleteBudget </p>

##### Instances
``` purescript
Newtype DeleteBudgetResponse _
Generic DeleteBudgetResponse _
Show DeleteBudgetResponse
Decode DeleteBudgetResponse
Encode DeleteBudgetResponse
```

#### `DeleteNotificationRequest`

``` purescript
newtype DeleteNotificationRequest
  = DeleteNotificationRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification }
```

<p> Request of DeleteNotification </p>

##### Instances
``` purescript
Newtype DeleteNotificationRequest _
Generic DeleteNotificationRequest _
Show DeleteNotificationRequest
Decode DeleteNotificationRequest
Encode DeleteNotificationRequest
```

#### `newDeleteNotificationRequest`

``` purescript
newDeleteNotificationRequest :: AccountId -> BudgetName -> Notification -> DeleteNotificationRequest
```

Constructs DeleteNotificationRequest from required parameters

#### `newDeleteNotificationRequest'`

``` purescript
newDeleteNotificationRequest' :: AccountId -> BudgetName -> Notification -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification }) -> DeleteNotificationRequest
```

Constructs DeleteNotificationRequest's fields from required parameters

#### `DeleteNotificationResponse`

``` purescript
newtype DeleteNotificationResponse
  = DeleteNotificationResponse NoArguments
```

<p> Response of DeleteNotification </p>

##### Instances
``` purescript
Newtype DeleteNotificationResponse _
Generic DeleteNotificationResponse _
Show DeleteNotificationResponse
Decode DeleteNotificationResponse
Encode DeleteNotificationResponse
```

#### `DeleteSubscriberRequest`

``` purescript
newtype DeleteSubscriberRequest
  = DeleteSubscriberRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscriber" :: Subscriber }
```

<p> Request of DeleteSubscriber </p>

##### Instances
``` purescript
Newtype DeleteSubscriberRequest _
Generic DeleteSubscriberRequest _
Show DeleteSubscriberRequest
Decode DeleteSubscriberRequest
Encode DeleteSubscriberRequest
```

#### `newDeleteSubscriberRequest`

``` purescript
newDeleteSubscriberRequest :: AccountId -> BudgetName -> Notification -> Subscriber -> DeleteSubscriberRequest
```

Constructs DeleteSubscriberRequest from required parameters

#### `newDeleteSubscriberRequest'`

``` purescript
newDeleteSubscriberRequest' :: AccountId -> BudgetName -> Notification -> Subscriber -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscriber" :: Subscriber } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "Subscriber" :: Subscriber }) -> DeleteSubscriberRequest
```

Constructs DeleteSubscriberRequest's fields from required parameters

#### `DeleteSubscriberResponse`

``` purescript
newtype DeleteSubscriberResponse
  = DeleteSubscriberResponse NoArguments
```

<p> Response of DeleteSubscriber </p>

##### Instances
``` purescript
Newtype DeleteSubscriberResponse _
Generic DeleteSubscriberResponse _
Show DeleteSubscriberResponse
Decode DeleteSubscriberResponse
Encode DeleteSubscriberResponse
```

#### `DescribeBudgetRequest`

``` purescript
newtype DescribeBudgetRequest
  = DescribeBudgetRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName }
```

<p> Request of DescribeBudget </p>

##### Instances
``` purescript
Newtype DescribeBudgetRequest _
Generic DescribeBudgetRequest _
Show DescribeBudgetRequest
Decode DescribeBudgetRequest
Encode DescribeBudgetRequest
```

#### `newDescribeBudgetRequest`

``` purescript
newDescribeBudgetRequest :: AccountId -> BudgetName -> DescribeBudgetRequest
```

Constructs DescribeBudgetRequest from required parameters

#### `newDescribeBudgetRequest'`

``` purescript
newDescribeBudgetRequest' :: AccountId -> BudgetName -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName }) -> DescribeBudgetRequest
```

Constructs DescribeBudgetRequest's fields from required parameters

#### `DescribeBudgetResponse`

``` purescript
newtype DescribeBudgetResponse
  = DescribeBudgetResponse { "Budget" :: NullOrUndefined (Budget) }
```

<p> Response of DescribeBudget </p>

##### Instances
``` purescript
Newtype DescribeBudgetResponse _
Generic DescribeBudgetResponse _
Show DescribeBudgetResponse
Decode DescribeBudgetResponse
Encode DescribeBudgetResponse
```

#### `newDescribeBudgetResponse`

``` purescript
newDescribeBudgetResponse :: DescribeBudgetResponse
```

Constructs DescribeBudgetResponse from required parameters

#### `newDescribeBudgetResponse'`

``` purescript
newDescribeBudgetResponse' :: ({ "Budget" :: NullOrUndefined (Budget) } -> { "Budget" :: NullOrUndefined (Budget) }) -> DescribeBudgetResponse
```

Constructs DescribeBudgetResponse's fields from required parameters

#### `DescribeBudgetsRequest`

``` purescript
newtype DescribeBudgetsRequest
  = DescribeBudgetsRequest { "AccountId" :: AccountId, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) }
```

<p> Request of DescribeBudgets </p>

##### Instances
``` purescript
Newtype DescribeBudgetsRequest _
Generic DescribeBudgetsRequest _
Show DescribeBudgetsRequest
Decode DescribeBudgetsRequest
Encode DescribeBudgetsRequest
```

#### `newDescribeBudgetsRequest`

``` purescript
newDescribeBudgetsRequest :: AccountId -> DescribeBudgetsRequest
```

Constructs DescribeBudgetsRequest from required parameters

#### `newDescribeBudgetsRequest'`

``` purescript
newDescribeBudgetsRequest' :: AccountId -> ({ "AccountId" :: AccountId, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) } -> { "AccountId" :: AccountId, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) }) -> DescribeBudgetsRequest
```

Constructs DescribeBudgetsRequest's fields from required parameters

#### `DescribeBudgetsResponse`

``` purescript
newtype DescribeBudgetsResponse
  = DescribeBudgetsResponse { "Budgets" :: NullOrUndefined (Budgets), "NextToken" :: NullOrUndefined (GenericString) }
```

<p> Response of DescribeBudgets </p>

##### Instances
``` purescript
Newtype DescribeBudgetsResponse _
Generic DescribeBudgetsResponse _
Show DescribeBudgetsResponse
Decode DescribeBudgetsResponse
Encode DescribeBudgetsResponse
```

#### `newDescribeBudgetsResponse`

``` purescript
newDescribeBudgetsResponse :: DescribeBudgetsResponse
```

Constructs DescribeBudgetsResponse from required parameters

#### `newDescribeBudgetsResponse'`

``` purescript
newDescribeBudgetsResponse' :: ({ "Budgets" :: NullOrUndefined (Budgets), "NextToken" :: NullOrUndefined (GenericString) } -> { "Budgets" :: NullOrUndefined (Budgets), "NextToken" :: NullOrUndefined (GenericString) }) -> DescribeBudgetsResponse
```

Constructs DescribeBudgetsResponse's fields from required parameters

#### `DescribeNotificationsForBudgetRequest`

``` purescript
newtype DescribeNotificationsForBudgetRequest
  = DescribeNotificationsForBudgetRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) }
```

<p> Request of DescribeNotificationsForBudget </p>

##### Instances
``` purescript
Newtype DescribeNotificationsForBudgetRequest _
Generic DescribeNotificationsForBudgetRequest _
Show DescribeNotificationsForBudgetRequest
Decode DescribeNotificationsForBudgetRequest
Encode DescribeNotificationsForBudgetRequest
```

#### `newDescribeNotificationsForBudgetRequest`

``` purescript
newDescribeNotificationsForBudgetRequest :: AccountId -> BudgetName -> DescribeNotificationsForBudgetRequest
```

Constructs DescribeNotificationsForBudgetRequest from required parameters

#### `newDescribeNotificationsForBudgetRequest'`

``` purescript
newDescribeNotificationsForBudgetRequest' :: AccountId -> BudgetName -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) }) -> DescribeNotificationsForBudgetRequest
```

Constructs DescribeNotificationsForBudgetRequest's fields from required parameters

#### `DescribeNotificationsForBudgetResponse`

``` purescript
newtype DescribeNotificationsForBudgetResponse
  = DescribeNotificationsForBudgetResponse { "Notifications" :: NullOrUndefined (Notifications), "NextToken" :: NullOrUndefined (GenericString) }
```

<p> Response of GetNotificationsForBudget </p>

##### Instances
``` purescript
Newtype DescribeNotificationsForBudgetResponse _
Generic DescribeNotificationsForBudgetResponse _
Show DescribeNotificationsForBudgetResponse
Decode DescribeNotificationsForBudgetResponse
Encode DescribeNotificationsForBudgetResponse
```

#### `newDescribeNotificationsForBudgetResponse`

``` purescript
newDescribeNotificationsForBudgetResponse :: DescribeNotificationsForBudgetResponse
```

Constructs DescribeNotificationsForBudgetResponse from required parameters

#### `newDescribeNotificationsForBudgetResponse'`

``` purescript
newDescribeNotificationsForBudgetResponse' :: ({ "Notifications" :: NullOrUndefined (Notifications), "NextToken" :: NullOrUndefined (GenericString) } -> { "Notifications" :: NullOrUndefined (Notifications), "NextToken" :: NullOrUndefined (GenericString) }) -> DescribeNotificationsForBudgetResponse
```

Constructs DescribeNotificationsForBudgetResponse's fields from required parameters

#### `DescribeSubscribersForNotificationRequest`

``` purescript
newtype DescribeSubscribersForNotificationRequest
  = DescribeSubscribersForNotificationRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) }
```

<p> Request of DescribeSubscribersForNotification </p>

##### Instances
``` purescript
Newtype DescribeSubscribersForNotificationRequest _
Generic DescribeSubscribersForNotificationRequest _
Show DescribeSubscribersForNotificationRequest
Decode DescribeSubscribersForNotificationRequest
Encode DescribeSubscribersForNotificationRequest
```

#### `newDescribeSubscribersForNotificationRequest`

``` purescript
newDescribeSubscribersForNotificationRequest :: AccountId -> BudgetName -> Notification -> DescribeSubscribersForNotificationRequest
```

Constructs DescribeSubscribersForNotificationRequest from required parameters

#### `newDescribeSubscribersForNotificationRequest'`

``` purescript
newDescribeSubscribersForNotificationRequest' :: AccountId -> BudgetName -> Notification -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (GenericString) }) -> DescribeSubscribersForNotificationRequest
```

Constructs DescribeSubscribersForNotificationRequest's fields from required parameters

#### `DescribeSubscribersForNotificationResponse`

``` purescript
newtype DescribeSubscribersForNotificationResponse
  = DescribeSubscribersForNotificationResponse { "Subscribers" :: NullOrUndefined (Subscribers), "NextToken" :: NullOrUndefined (GenericString) }
```

<p> Response of DescribeSubscribersForNotification </p>

##### Instances
``` purescript
Newtype DescribeSubscribersForNotificationResponse _
Generic DescribeSubscribersForNotificationResponse _
Show DescribeSubscribersForNotificationResponse
Decode DescribeSubscribersForNotificationResponse
Encode DescribeSubscribersForNotificationResponse
```

#### `newDescribeSubscribersForNotificationResponse`

``` purescript
newDescribeSubscribersForNotificationResponse :: DescribeSubscribersForNotificationResponse
```

Constructs DescribeSubscribersForNotificationResponse from required parameters

#### `newDescribeSubscribersForNotificationResponse'`

``` purescript
newDescribeSubscribersForNotificationResponse' :: ({ "Subscribers" :: NullOrUndefined (Subscribers), "NextToken" :: NullOrUndefined (GenericString) } -> { "Subscribers" :: NullOrUndefined (Subscribers), "NextToken" :: NullOrUndefined (GenericString) }) -> DescribeSubscribersForNotificationResponse
```

Constructs DescribeSubscribersForNotificationResponse's fields from required parameters

#### `DimensionValues`

``` purescript
newtype DimensionValues
  = DimensionValues (Array GenericString)
```

##### Instances
``` purescript
Newtype DimensionValues _
Generic DimensionValues _
Show DimensionValues
Decode DimensionValues
Encode DimensionValues
```

#### `DuplicateRecordException`

``` purescript
newtype DuplicateRecordException
  = DuplicateRecordException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The budget name already exists. Budget names must be unique within an account.</p>

##### Instances
``` purescript
Newtype DuplicateRecordException _
Generic DuplicateRecordException _
Show DuplicateRecordException
Decode DuplicateRecordException
Encode DuplicateRecordException
```

#### `newDuplicateRecordException`

``` purescript
newDuplicateRecordException :: DuplicateRecordException
```

Constructs DuplicateRecordException from required parameters

#### `newDuplicateRecordException'`

``` purescript
newDuplicateRecordException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> DuplicateRecordException
```

Constructs DuplicateRecordException's fields from required parameters

#### `ExpiredNextTokenException`

``` purescript
newtype ExpiredNextTokenException
  = ExpiredNextTokenException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The pagination token expired.</p>

##### Instances
``` purescript
Newtype ExpiredNextTokenException _
Generic ExpiredNextTokenException _
Show ExpiredNextTokenException
Decode ExpiredNextTokenException
Encode ExpiredNextTokenException
```

#### `newExpiredNextTokenException`

``` purescript
newExpiredNextTokenException :: ExpiredNextTokenException
```

Constructs ExpiredNextTokenException from required parameters

#### `newExpiredNextTokenException'`

``` purescript
newExpiredNextTokenException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> ExpiredNextTokenException
```

Constructs ExpiredNextTokenException's fields from required parameters

#### `GenericString`

``` purescript
newtype GenericString
  = GenericString String
```

<p> A generic String.</p>

##### Instances
``` purescript
Newtype GenericString _
Generic GenericString _
Show GenericString
Decode GenericString
Encode GenericString
```

#### `GenericTimestamp`

``` purescript
newtype GenericTimestamp
  = GenericTimestamp Timestamp
```

<p> A generic timestamp. In Java it is transformed to a Date object.</p>

##### Instances
``` purescript
Newtype GenericTimestamp _
Generic GenericTimestamp _
Show GenericTimestamp
Decode GenericTimestamp
Encode GenericTimestamp
```

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>An error on the server occurred during the processing of your request. Try again later.</p>

##### Instances
``` purescript
Newtype InternalErrorException _
Generic InternalErrorException _
Show InternalErrorException
Decode InternalErrorException
Encode InternalErrorException
```

#### `newInternalErrorException`

``` purescript
newInternalErrorException :: InternalErrorException
```

Constructs InternalErrorException from required parameters

#### `newInternalErrorException'`

``` purescript
newInternalErrorException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The pagination token is invalid.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `newInvalidNextTokenException`

``` purescript
newInvalidNextTokenException :: InvalidNextTokenException
```

Constructs InvalidNextTokenException from required parameters

#### `newInvalidNextTokenException'`

``` purescript
newInvalidNextTokenException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>An error on the client occurred. Typically, the cause is an invalid input value.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

<p> An integer to represent how many entries a paginated response contains. Maximum is set to 100.</p>

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>We can’t locate the resource that you specified.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `Notification`

``` purescript
newtype Notification
  = Notification { "NotificationType" :: NotificationType, "ComparisonOperator" :: ComparisonOperator, "Threshold" :: NotificationThreshold, "ThresholdType" :: NullOrUndefined (ThresholdType) }
```

<p>A notification associated with a budget. A budget can have up to five notifications. </p> <p>Each notification must have at least one subscriber. A notification can have one SNS subscriber and up to ten email subscribers, for a total of 11 subscribers.</p> <p>For example, if you have a budget for 200 dollars and you want to be notified when you go over 160 dollars, create a notification with the following parameters:</p> <ul> <li> <p>A notificationType of <code>ACTUAL</code> </p> </li> <li> <p>A comparisonOperator of <code>GREATER_THAN</code> </p> </li> <li> <p>A notification threshold of <code>80</code> </p> </li> </ul>

##### Instances
``` purescript
Newtype Notification _
Generic Notification _
Show Notification
Decode Notification
Encode Notification
```

#### `newNotification`

``` purescript
newNotification :: ComparisonOperator -> NotificationType -> NotificationThreshold -> Notification
```

Constructs Notification from required parameters

#### `newNotification'`

``` purescript
newNotification' :: ComparisonOperator -> NotificationType -> NotificationThreshold -> ({ "NotificationType" :: NotificationType, "ComparisonOperator" :: ComparisonOperator, "Threshold" :: NotificationThreshold, "ThresholdType" :: NullOrUndefined (ThresholdType) } -> { "NotificationType" :: NotificationType, "ComparisonOperator" :: ComparisonOperator, "Threshold" :: NotificationThreshold, "ThresholdType" :: NullOrUndefined (ThresholdType) }) -> Notification
```

Constructs Notification's fields from required parameters

#### `NotificationThreshold`

``` purescript
newtype NotificationThreshold
  = NotificationThreshold Number
```

<p> The threshold of a notification. It should be a number between 0 and 1,000,000,000.</p>

##### Instances
``` purescript
Newtype NotificationThreshold _
Generic NotificationThreshold _
Show NotificationThreshold
Decode NotificationThreshold
Encode NotificationThreshold
```

#### `NotificationType`

``` purescript
newtype NotificationType
  = NotificationType String
```

<p> The type of a notification. It should be ACTUAL or FORECASTED.</p>

##### Instances
``` purescript
Newtype NotificationType _
Generic NotificationType _
Show NotificationType
Decode NotificationType
Encode NotificationType
```

#### `NotificationWithSubscribers`

``` purescript
newtype NotificationWithSubscribers
  = NotificationWithSubscribers { "Notification" :: Notification, "Subscribers" :: Subscribers }
```

<p>A notification with subscribers. A notification can have one SNS subscriber and up to ten email subscribers, for a total of 11 subscribers.</p>

##### Instances
``` purescript
Newtype NotificationWithSubscribers _
Generic NotificationWithSubscribers _
Show NotificationWithSubscribers
Decode NotificationWithSubscribers
Encode NotificationWithSubscribers
```

#### `newNotificationWithSubscribers`

``` purescript
newNotificationWithSubscribers :: Notification -> Subscribers -> NotificationWithSubscribers
```

Constructs NotificationWithSubscribers from required parameters

#### `newNotificationWithSubscribers'`

``` purescript
newNotificationWithSubscribers' :: Notification -> Subscribers -> ({ "Notification" :: Notification, "Subscribers" :: Subscribers } -> { "Notification" :: Notification, "Subscribers" :: Subscribers }) -> NotificationWithSubscribers
```

Constructs NotificationWithSubscribers's fields from required parameters

#### `NotificationWithSubscribersList`

``` purescript
newtype NotificationWithSubscribersList
  = NotificationWithSubscribersList (Array NotificationWithSubscribers)
```

<p> A list of Notifications, each with a list of subscribers.</p>

##### Instances
``` purescript
Newtype NotificationWithSubscribersList _
Generic NotificationWithSubscribersList _
Show NotificationWithSubscribersList
Decode NotificationWithSubscribersList
Encode NotificationWithSubscribersList
```

#### `Notifications`

``` purescript
newtype Notifications
  = Notifications (Array Notification)
```

<p> A list of notifications.</p>

##### Instances
``` purescript
Newtype Notifications _
Generic Notifications _
Show Notifications
Decode Notifications
Encode Notifications
```

#### `NullableBoolean`

``` purescript
newtype NullableBoolean
  = NullableBoolean Boolean
```

##### Instances
``` purescript
Newtype NullableBoolean _
Generic NullableBoolean _
Show NullableBoolean
Decode NullableBoolean
Encode NullableBoolean
```

#### `NumericValue`

``` purescript
newtype NumericValue
  = NumericValue String
```

<p> A string to represent NumericValue.</p>

##### Instances
``` purescript
Newtype NumericValue _
Generic NumericValue _
Show NumericValue
Decode NumericValue
Encode NumericValue
```

#### `Spend`

``` purescript
newtype Spend
  = Spend { "Amount" :: NumericValue, "Unit" :: UnitValue }
```

<p>The amount of cost or usage being measured for a budget.</p> <p>For example, a <code>Spend</code> for <code>3 GB</code> of S3 usage would have the following parameters:</p> <ul> <li> <p>An <code>Amount</code> of <code>3</code> </p> </li> <li> <p>A <code>unit</code> of <code>GB</code> </p> </li> </ul>

##### Instances
``` purescript
Newtype Spend _
Generic Spend _
Show Spend
Decode Spend
Encode Spend
```

#### `newSpend`

``` purescript
newSpend :: NumericValue -> UnitValue -> Spend
```

Constructs Spend from required parameters

#### `newSpend'`

``` purescript
newSpend' :: NumericValue -> UnitValue -> ({ "Amount" :: NumericValue, "Unit" :: UnitValue } -> { "Amount" :: NumericValue, "Unit" :: UnitValue }) -> Spend
```

Constructs Spend's fields from required parameters

#### `Subscriber`

``` purescript
newtype Subscriber
  = Subscriber { "SubscriptionType" :: SubscriptionType, "Address" :: SubscriberAddress }
```

<p>The subscriber to a budget notification. The subscriber consists of a subscription type and either an Amazon Simple Notification Service topic or an email address.</p> <p>For example, an email subscriber would have the following parameters:</p> <ul> <li> <p>A <code>subscriptionType</code> of <code>EMAIL</code> </p> </li> <li> <p>An <code>address</code> of <code>example@example.com</code> </p> </li> </ul>

##### Instances
``` purescript
Newtype Subscriber _
Generic Subscriber _
Show Subscriber
Decode Subscriber
Encode Subscriber
```

#### `newSubscriber`

``` purescript
newSubscriber :: SubscriberAddress -> SubscriptionType -> Subscriber
```

Constructs Subscriber from required parameters

#### `newSubscriber'`

``` purescript
newSubscriber' :: SubscriberAddress -> SubscriptionType -> ({ "SubscriptionType" :: SubscriptionType, "Address" :: SubscriberAddress } -> { "SubscriptionType" :: SubscriptionType, "Address" :: SubscriberAddress }) -> Subscriber
```

Constructs Subscriber's fields from required parameters

#### `SubscriberAddress`

``` purescript
newtype SubscriberAddress
  = SubscriberAddress String
```

<p> String containing email or sns topic for the subscriber address.</p>

##### Instances
``` purescript
Newtype SubscriberAddress _
Generic SubscriberAddress _
Show SubscriberAddress
Decode SubscriberAddress
Encode SubscriberAddress
```

#### `Subscribers`

``` purescript
newtype Subscribers
  = Subscribers (Array Subscriber)
```

<p> A list of subscribers.</p>

##### Instances
``` purescript
Newtype Subscribers _
Generic Subscribers _
Show Subscribers
Decode Subscribers
Encode Subscribers
```

#### `SubscriptionType`

``` purescript
newtype SubscriptionType
  = SubscriptionType String
```

<p> The subscription type of the subscriber. It can be SMS or EMAIL.</p>

##### Instances
``` purescript
Newtype SubscriptionType _
Generic SubscriptionType _
Show SubscriptionType
Decode SubscriptionType
Encode SubscriptionType
```

#### `ThresholdType`

``` purescript
newtype ThresholdType
  = ThresholdType String
```

<p> The type of threshold for a notification. It can be PERCENTAGE or ABSOLUTE_VALUE.</p>

##### Instances
``` purescript
Newtype ThresholdType _
Generic ThresholdType _
Show ThresholdType
Decode ThresholdType
Encode ThresholdType
```

#### `TimePeriod`

``` purescript
newtype TimePeriod
  = TimePeriod { "Start" :: NullOrUndefined (GenericTimestamp), "End" :: NullOrUndefined (GenericTimestamp) }
```

<p>The period of time covered by a budget. Has a start date and an end date. The start date must come before the end date. There are no restrictions on the end date. </p>

##### Instances
``` purescript
Newtype TimePeriod _
Generic TimePeriod _
Show TimePeriod
Decode TimePeriod
Encode TimePeriod
```

#### `newTimePeriod`

``` purescript
newTimePeriod :: TimePeriod
```

Constructs TimePeriod from required parameters

#### `newTimePeriod'`

``` purescript
newTimePeriod' :: ({ "Start" :: NullOrUndefined (GenericTimestamp), "End" :: NullOrUndefined (GenericTimestamp) } -> { "Start" :: NullOrUndefined (GenericTimestamp), "End" :: NullOrUndefined (GenericTimestamp) }) -> TimePeriod
```

Constructs TimePeriod's fields from required parameters

#### `TimeUnit`

``` purescript
newtype TimeUnit
  = TimeUnit String
```

<p> The time unit of the budget. e.g. MONTHLY, QUARTERLY, etc.</p>

##### Instances
``` purescript
Newtype TimeUnit _
Generic TimeUnit _
Show TimeUnit
Decode TimeUnit
Encode TimeUnit
```

#### `UnitValue`

``` purescript
newtype UnitValue
  = UnitValue String
```

<p> A string to represent budget spend unit. It should be not null and not empty.</p>

##### Instances
``` purescript
Newtype UnitValue _
Generic UnitValue _
Show UnitValue
Decode UnitValue
Encode UnitValue
```

#### `UpdateBudgetRequest`

``` purescript
newtype UpdateBudgetRequest
  = UpdateBudgetRequest { "AccountId" :: AccountId, "NewBudget" :: Budget }
```

<p> Request of UpdateBudget </p>

##### Instances
``` purescript
Newtype UpdateBudgetRequest _
Generic UpdateBudgetRequest _
Show UpdateBudgetRequest
Decode UpdateBudgetRequest
Encode UpdateBudgetRequest
```

#### `newUpdateBudgetRequest`

``` purescript
newUpdateBudgetRequest :: AccountId -> Budget -> UpdateBudgetRequest
```

Constructs UpdateBudgetRequest from required parameters

#### `newUpdateBudgetRequest'`

``` purescript
newUpdateBudgetRequest' :: AccountId -> Budget -> ({ "AccountId" :: AccountId, "NewBudget" :: Budget } -> { "AccountId" :: AccountId, "NewBudget" :: Budget }) -> UpdateBudgetRequest
```

Constructs UpdateBudgetRequest's fields from required parameters

#### `UpdateBudgetResponse`

``` purescript
newtype UpdateBudgetResponse
  = UpdateBudgetResponse NoArguments
```

<p> Response of UpdateBudget </p>

##### Instances
``` purescript
Newtype UpdateBudgetResponse _
Generic UpdateBudgetResponse _
Show UpdateBudgetResponse
Decode UpdateBudgetResponse
Encode UpdateBudgetResponse
```

#### `UpdateNotificationRequest`

``` purescript
newtype UpdateNotificationRequest
  = UpdateNotificationRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "OldNotification" :: Notification, "NewNotification" :: Notification }
```

<p> Request of UpdateNotification </p>

##### Instances
``` purescript
Newtype UpdateNotificationRequest _
Generic UpdateNotificationRequest _
Show UpdateNotificationRequest
Decode UpdateNotificationRequest
Encode UpdateNotificationRequest
```

#### `newUpdateNotificationRequest`

``` purescript
newUpdateNotificationRequest :: AccountId -> BudgetName -> Notification -> Notification -> UpdateNotificationRequest
```

Constructs UpdateNotificationRequest from required parameters

#### `newUpdateNotificationRequest'`

``` purescript
newUpdateNotificationRequest' :: AccountId -> BudgetName -> Notification -> Notification -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "OldNotification" :: Notification, "NewNotification" :: Notification } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "OldNotification" :: Notification, "NewNotification" :: Notification }) -> UpdateNotificationRequest
```

Constructs UpdateNotificationRequest's fields from required parameters

#### `UpdateNotificationResponse`

``` purescript
newtype UpdateNotificationResponse
  = UpdateNotificationResponse NoArguments
```

<p> Response of UpdateNotification </p>

##### Instances
``` purescript
Newtype UpdateNotificationResponse _
Generic UpdateNotificationResponse _
Show UpdateNotificationResponse
Decode UpdateNotificationResponse
Encode UpdateNotificationResponse
```

#### `UpdateSubscriberRequest`

``` purescript
newtype UpdateSubscriberRequest
  = UpdateSubscriberRequest { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "OldSubscriber" :: Subscriber, "NewSubscriber" :: Subscriber }
```

<p> Request of UpdateSubscriber </p>

##### Instances
``` purescript
Newtype UpdateSubscriberRequest _
Generic UpdateSubscriberRequest _
Show UpdateSubscriberRequest
Decode UpdateSubscriberRequest
Encode UpdateSubscriberRequest
```

#### `newUpdateSubscriberRequest`

``` purescript
newUpdateSubscriberRequest :: AccountId -> BudgetName -> Subscriber -> Notification -> Subscriber -> UpdateSubscriberRequest
```

Constructs UpdateSubscriberRequest from required parameters

#### `newUpdateSubscriberRequest'`

``` purescript
newUpdateSubscriberRequest' :: AccountId -> BudgetName -> Subscriber -> Notification -> Subscriber -> ({ "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "OldSubscriber" :: Subscriber, "NewSubscriber" :: Subscriber } -> { "AccountId" :: AccountId, "BudgetName" :: BudgetName, "Notification" :: Notification, "OldSubscriber" :: Subscriber, "NewSubscriber" :: Subscriber }) -> UpdateSubscriberRequest
```

Constructs UpdateSubscriberRequest's fields from required parameters

#### `UpdateSubscriberResponse`

``` purescript
newtype UpdateSubscriberResponse
  = UpdateSubscriberResponse NoArguments
```

<p> Response of UpdateSubscriber </p>

##### Instances
``` purescript
Newtype UpdateSubscriberResponse _
Generic UpdateSubscriberResponse _
Show UpdateSubscriberResponse
Decode UpdateSubscriberResponse
Encode UpdateSubscriberResponse
```

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

<p>The error message the exception carries.</p>

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```


