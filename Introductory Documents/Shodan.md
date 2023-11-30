**What is Shodan?** 
Shodan is a search engine that lets you find specific types of computers (servers, routers, etc.) connected to the internet. It's often used for security research and finding devices with vulnerabilities.

**Basic Shodan Commands:**

1. **Basic Search:**

  ```
  shodan search <query>
  ```

  Replace <query> with the specific term you want to search for, such as "Apache" or "Netgear."

2. **Filter by Port:**
  
  ```
  shodan search --ports <port>
  ```  
  
  Replace <port> with the specific port number you want to search for.

3. **Filter by Country:**
  
  ```
  shodan search --city <city>
  ```  
  
  Replace <city> with the name of the city you want to search in.

4. **Filter by Organization:**

  ```
  shodan search --org <organization>
  ```  
  
  Replace <organization> with the name of the organization you want to search for.

5. **Filter by Hostname:**
  
  ```
  shodan search --hostname <hostname>
  ```  
  
  Replace <hostname> with the specific hostname you want to search for.

6. **Filter by Product:**
  
  ```
  shodan search --product <product>
  ```  
  
  Replace <product> with the name of a specific product or software.


7. **API Key Usage: **
  If you have a Shodan API key, you can use it with the following command.

  ```
  shodan search --key <api_key> <query>
  ```

  This command provides information about the versions of services running on the target.


Remember that using Shodan for any malicious or unauthorized activities is against their terms of service. Always ensure that you have the right permissions and legal authorization before using Shodan for any security research.
