## 1 Programming
Given an unordered array of integers of length N > 0, calculate the length of the longest ordered (ascending from left [lower index] to right [higher index]) sub-sequence within the array.

#### Example 1
```
Input: [1,4,1,4,2,1,3,5,6,2,3,7]
Expected Output: 4
```

#### Example 2
```
Input: [3,1,4,1,5,9,2,6,5,3,5]
Expected Output: 3
```

#### Example 3
```
Input: [2,7,1,8,2,8,1]
Expected Output: 2

```

## 2 Web Front-End Test
Automate the following functional test using Selenium:
1. Navigate to the Wikipedia home page, http://www.wikipedia.org/.
2. Search for a given string in English:
- a) Type in a string given as parameter in the search input field. 
- b) Select English as the search language.
- c) Click the search button.
3. Validate that the first heading of the search results page matches the search string (ignoring case).
4. Verify that the search results page is available in a language given as parameter.
5. Navigate to the search results page in that language.
6. Validate that the search results page in the new language includes a link to the version in English.


## 3 Web Service Test
Given the following specification: 
1. Service: UKLocation (http://www.webservicex.net/uklocation.asmx?WSDL). 
2. Port: SOAP (any version).
3. Operation: GetUKLocationByCounty.
Automate the retrieval of a UK location from a county given as parameter, and validate that the result matches a second string, also given as parameter.