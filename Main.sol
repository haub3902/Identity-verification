pragma solidity ^0.8.0;

// Struct to hold identity information
struct Identity {
    string name;
    uint age;
}

// Mapping of addresses to their corresponding identities
mapping(address => Identity) public identities;

// Function to verify the identity of a user
function verifyIdentity(string memory name, uint age) public {
    require(age >= 18, "You must be 18 or older to verify your identity");
    identities[msg.sender] = Identity(name, age);
}

