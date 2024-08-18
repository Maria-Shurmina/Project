SELECT [Production].[Product].[Name], SUM([Production].[ProductCostHistory].[StandardCost]) AS Sum_StandardCost
FROM [AdventureWorks2019].[Production].[Product]
JOIN [AdventureWorks2019].[Production].[ProductCostHistory] ON [Production].[Product].ProductID = [Production].[ProductCostHistory].ProductID
GROUP BY [Production].[Product].[Name]