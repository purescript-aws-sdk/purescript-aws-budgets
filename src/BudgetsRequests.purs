
module AWS.Budgets.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Budgets as Budgets
import AWS.Budgets.Types as BudgetsTypes


-- | <p>Creates a budget and, if included, notifications and subscribers. </p>
createBudget :: forall eff. Budgets.Service -> BudgetsTypes.CreateBudgetRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.CreateBudgetResponse
createBudget (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createBudget"


-- | <p>Creates a notification. You must create the budget before you create the associated notification.</p>
createNotification :: forall eff. Budgets.Service -> BudgetsTypes.CreateNotificationRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.CreateNotificationResponse
createNotification (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createNotification"


-- | <p>Creates a subscriber. You must create the associated budget and notification before you create the subscriber.</p>
createSubscriber :: forall eff. Budgets.Service -> BudgetsTypes.CreateSubscriberRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.CreateSubscriberResponse
createSubscriber (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSubscriber"


-- | <p>Deletes a budget. You can delete your budget at any time.</p> <p> <b>Deleting a budget also deletes the notifications and subscribers associated with that budget.</b> </p>
deleteBudget :: forall eff. Budgets.Service -> BudgetsTypes.DeleteBudgetRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.DeleteBudgetResponse
deleteBudget (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBudget"


-- | <p>Deletes a notification.</p> <p> <b>Deleting a notification also deletes the subscribers associated with the notification.</b> </p>
deleteNotification :: forall eff. Budgets.Service -> BudgetsTypes.DeleteNotificationRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.DeleteNotificationResponse
deleteNotification (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNotification"


-- | <p>Deletes a subscriber.</p> <p> <b>Deleting the last subscriber to a notification also deletes the notification.</b> </p>
deleteSubscriber :: forall eff. Budgets.Service -> BudgetsTypes.DeleteSubscriberRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.DeleteSubscriberResponse
deleteSubscriber (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSubscriber"


-- | <p>Describes a budget.</p>
describeBudget :: forall eff. Budgets.Service -> BudgetsTypes.DescribeBudgetRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.DescribeBudgetResponse
describeBudget (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBudget"


-- | <p>Lists the budgets associated with an account.</p>
describeBudgets :: forall eff. Budgets.Service -> BudgetsTypes.DescribeBudgetsRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.DescribeBudgetsResponse
describeBudgets (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBudgets"


-- | <p>Lists the notifications associated with a budget.</p>
describeNotificationsForBudget :: forall eff. Budgets.Service -> BudgetsTypes.DescribeNotificationsForBudgetRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.DescribeNotificationsForBudgetResponse
describeNotificationsForBudget (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeNotificationsForBudget"


-- | <p>Lists the subscribers associated with a notification.</p>
describeSubscribersForNotification :: forall eff. Budgets.Service -> BudgetsTypes.DescribeSubscribersForNotificationRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.DescribeSubscribersForNotificationResponse
describeSubscribersForNotification (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSubscribersForNotification"


-- | <p>Updates a budget. You can change every part of a budget except for the <code>budgetName</code> and the <code>calculatedSpend</code>. When a budget is modified, the <code>calculatedSpend</code> drops to zero until AWS has new usage data to use for forecasting.</p>
updateBudget :: forall eff. Budgets.Service -> BudgetsTypes.UpdateBudgetRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.UpdateBudgetResponse
updateBudget (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateBudget"


-- | <p>Updates a notification.</p>
updateNotification :: forall eff. Budgets.Service -> BudgetsTypes.UpdateNotificationRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.UpdateNotificationResponse
updateNotification (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateNotification"


-- | <p>Updates a subscriber.</p>
updateSubscriber :: forall eff. Budgets.Service -> BudgetsTypes.UpdateSubscriberRequest -> Aff (exception :: EXCEPTION | eff) BudgetsTypes.UpdateSubscriberResponse
updateSubscriber (Budgets.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateSubscriber"
