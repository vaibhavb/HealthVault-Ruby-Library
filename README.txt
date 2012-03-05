This is a work in progress ruby library for HealthVault. I'm releasing un-finished library so that folks can learn from it, please take the code with grain of salt.

Requirements
------------
This code written for Ruby 1.9 and tested on Windows 7.


Easiest way to start
---------------------
Using Ruby 1.9 run the sample \examples\helloworld-vocab\getvocab.rb, and use the code in that application for your work.

Sample run
~~~~~~~~~~
HealthVault-Ruby-Library\examples\helloworld-vocab>ruby getvocab.rb
authenticated application...
got thing-type vocabulary...
<response><status><code>0</code></status><wc:info xmlns:wc="urn:com.microsoft.wc
.methods.response.GetVocabulary"><vocabulary xml:lang="en"><name>thing-types</na
me><family>wc</family><version>1</version><code-item><code-value>3e730686-781f-4
616-aa0d-817bba8eb141</code-value><display-text/></code-item><code-item><code-va
lue>adaf49ad-8e10-49f8-9783-174819e97051</code-value><display-text/></code-item>
....


Directory Structure 
------------------
* \lib has two libraries \simple and \complex. The simple one shows basic authentication with HealthVault. The \complex one has support for all HealthVault methods and Types.

* \examples has examples for using this library. The easiest one to start from is \helloworld-vocab



TODO
----
1. Add offline sample
2. Support any elements in the schema
3. Add a sample for rails application using the library
4. Release the library as a ruby gem
5. ...


License
-------

Unless stated this code is LICENSED under APACHE 2.0 LICENSE


Copyright
---------
Unless stated the copyright of this code are with Lib13 Corp.


Credits
-------
Lots of the work is based on Danny Coates and farzad's work on HealthVault ruby. The base work is based on Vaibhav's blog series on authenticated with HealthVault.


Maintainer Contact
------------------
* Vaibhav Bhandari - vaibhavb@lib13.com