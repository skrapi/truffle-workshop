pragma solidity ^0.4.24;


import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";


contract AttendenceToken is Ownable{
    string name;
    string symbol;
    
    constructor (string _name, string _symbol) public 
        {
            name = _name;
            symbol = _symbol;
        }
    
    mapping (uint16 => mapping( address => bool)) public attendence;
    
    mapping(string => uint16) tokenId;
    
    uint16[] token;
    
    
    
    function createToken(string _tokenName) public onlyOwner() {
        attendence[_tokenName][msg.sender] = true;
        tokenId[_tokenName] = token.push(_tokenId)-1;
        
    }
    
    function mint(address _signee, uint16 _tokenId) public onlyOwner() {
     // TODO implement minting process
     
    }
    
    
    // TODO implement newToken - to verify it hasn't been created before
    modifier newToken(_tokenName) {
        require()
    }
    
    
}