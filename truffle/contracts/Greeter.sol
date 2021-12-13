pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Greeter is Ownable {
    string private _greeting = "Hello, World!";
    address private _owner;

    constructor() {
        _owner = msg.sender;
    }

    function greet() external view returns (string memory) {
        return _greeting;
    }

    function setGreeting(string calldata greeting) external onlyOwner {
        _greeting = greeting;
    }
}
