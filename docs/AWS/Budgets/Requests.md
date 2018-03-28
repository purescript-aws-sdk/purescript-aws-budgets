## Module AWS.Budgets.Requests

#### `createBudget`

``` purescript
createBudget :: forall eff. Service -> CreateBudgetRequest -> Aff (exception :: EXCEPTION | eff) CreateBudgetResponse
```

<p>Creates a budget and, if included, notifications and subscribers. </p>

#### `createNotification`

``` purescript
createNotification :: forall eff. Service -> CreateNotificationRequest -> Aff (exception :: EXCEPTION | eff) CreateNotificationResponse
```

<p>Creates a notification. You must create the budget before you create the associated notification.</p>

#### `createSubscriber`

``` purescript
createSubscriber :: forall eff. Service -> CreateSubscriberRequest -> Aff (exception :: EXCEPTION | eff) CreateSubscriberResponse
```

<p>Creates a subscriber. You must create the associated budget and notification before you create the subscriber.</p>

#### `deleteBudget`

``` purescript
deleteBudget :: forall eff. Service -> DeleteBudgetRequest -> Aff (exception :: EXCEPTION | eff) DeleteBudgetResponse
```

<p>Deletes a budget. You can delete your budget at any time.</p> <p> <b>Deleting a budget also deletes the notifications and subscribers associated with that budget.</b> </p>

#### `deleteNotification`

``` purescript
deleteNotification :: forall eff. Service -> DeleteNotificationRequest -> Aff (exception :: EXCEPTION | eff) DeleteNotificationResponse
```

<p>Deletes a notification.</p> <p> <b>Deleting a notification also deletes the subscribers associated with the notification.</b> </p>

#### `deleteSubscriber`

``` purescript
deleteSubscriber :: forall eff. Service -> DeleteSubscriberRequest -> Aff (exception :: EXCEPTION | eff) DeleteSubscriberResponse
```

<p>Deletes a subscriber.</p> <p> <b>Deleting the last subscriber to a notification also deletes the notification.</b> </p>

#### `describeBudget`

``` purescript
describeBudget :: forall eff. Service -> DescribeBudgetRequest -> Aff (exception :: EXCEPTION | eff) DescribeBudgetResponse
```

<p>Describes a budget.</p>

#### `describeBudgets`

``` purescript
describeBudgets :: forall eff. Service -> DescribeBudgetsRequest -> Aff (exception :: EXCEPTION | eff) DescribeBudgetsResponse
```

<p>Lists the budgets associated with an account.</p>

#### `describeNotificationsForBudget`

``` purescript
describeNotificationsForBudget :: forall eff. Service -> DescribeNotificationsForBudgetRequest -> Aff (exception :: EXCEPTION | eff) DescribeNotificationsForBudgetResponse
```

<p>Lists the notifications associated with a budget.</p>

#### `describeSubscribersForNotification`

``` purescript
describeSubscribersForNotification :: forall eff. Service -> DescribeSubscribersForNotificationRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubscribersForNotificationResponse
```

<p>Lists the subscribers associated with a notification.</p>

#### `updateBudget`

``` purescript
updateBudget :: forall eff. Service -> UpdateBudgetRequest -> Aff (exception :: EXCEPTION | eff) UpdateBudgetResponse
```

<p>Updates a budget. You can change every part of a budget except for the <code>budgetName</code> and the <code>calculatedSpend</code>. When a budget is modified, the <code>calculatedSpend</code> drops to zero until AWS has new usage data to use for forecasting.</p>

#### `updateNotification`

``` purescript
updateNotification :: forall eff. Service -> UpdateNotificationRequest -> Aff (exception :: EXCEPTION | eff) UpdateNotificationResponse
```

<p>Updates a notification.</p>

#### `updateSubscriber`

``` purescript
updateSubscriber :: forall eff. Service -> UpdateSubscriberRequest -> Aff (exception :: EXCEPTION | eff) UpdateSubscriberResponse
```

<p>Updates a subscriber.</p>


