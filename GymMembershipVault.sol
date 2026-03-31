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
    
    event MembershipPurchased(address indexed member, uint256 amount);

    function buyMembership() public payable {
        require(msg.value == membershipPrice, "Morate poslati tacno 0.01 ETH.");
        require(!isMember[msg.sender], "Korisnik je vec aktivni clan.");

        isMember[msg.sender] = true;
        emit MembershipPurchased(msg.sender, msg.value);
    }

    function withdrawFunds() external {
        require(msg.sender == owner, "Samo vlasnik moze povuci sredstva.");
        uint256 balance = address(this).balance;
        require(balance > 0, "Nema dostupnih sredstava.");

        (bool success, ) = payable(owner).call{value: balance}("");
        require(success, "Transfer nije uspeo");
    }

}
