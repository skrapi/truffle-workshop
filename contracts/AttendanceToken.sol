pragma solidity ^0.4.24;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";


contract AttendanceToken is ERC20, ERC20Detailed, ERC20Mintable, Ownable {
    constructor (string name, string symbol, uint8 decimals, address[] minters) ERC20Mintable() ERC20Detailed(name, symbol, decimals) ERC20() Ownable() public {}
    

}