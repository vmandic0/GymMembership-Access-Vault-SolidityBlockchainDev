// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title GymMembershipVault
 * @author Vuk
 * @notice Pametni ugovor za upravljanje članarinama u teretani na Sepolia testnoj mreži.
 */

contract GymMembershipVault {
    address public owner;
    uint256 public membershipPrice = 0.01 ether;
    mapping(address => bool) public isMember;

    constructor() {
        owner = msg.sender;
    }
}
