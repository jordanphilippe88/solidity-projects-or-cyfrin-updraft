// Learning Coding to better understand Blockchain & Smart Contracts

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Solidity version

contract SimpleStorage {
    // Favorite number gets initialized to 0 if no number is given
    uint256 public favoriteNumber; // Defaults to 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic array to store people
    Person[] public listofPeople;

    // Mapping to link names to favorite numbers
    mapping(string => uint256) public nameToFavoriteNumber;

    // Function to store a number
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; // Fixed variable name
    }

    // View function to retrieve favoriteNumber
    function retrieved() public view returns (uint256) {
        return favoriteNumber; // Fixed variable name
    }

    // Function to add a person with a favorite number
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listofPeople.push(Person(_favoriteNumber, _name)); // Store struct in array
        nameToFavoriteNumber[_name] = _favoriteNumber; // Store mapping data
    }
}
