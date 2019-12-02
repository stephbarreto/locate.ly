pragma solidity ^0.5.0;

contract Book {
    address[16] public users;

    function book(uint lotId) public returns (uint) {
        require(lotId >= 0 && lotId <= 15);

        users[lotId] = msg.sender;

        return lotId;
    }

    function getUsers() public view returns (address[16] memory) {
        return users;
    }
}