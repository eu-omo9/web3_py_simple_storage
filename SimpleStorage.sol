// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 favoriteNumber;
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameTofavoriteNumber;

    function store(uint _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
    return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }

}