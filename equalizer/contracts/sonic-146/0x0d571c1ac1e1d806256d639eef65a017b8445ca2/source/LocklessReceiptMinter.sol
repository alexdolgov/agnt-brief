/**
 *Submitted for verification at ftmscan.com on 2024-01-29
*/

// SPDX-License-Identifier: Unlicensed
// (C) Sam, 543#3017, Guru Network, 2022-9999
// Lockless Protocol: Receipt Token
// SWFTM : Staked-Wrapped FTM
// Manager: Millenium Club
pragma solidity 0.8.17;

interface ILocklessReceipt {
	function mint(address,uint) external returns(bool);
}

contract LocklessReceiptMinter {

	uint public interactions;
    address public LocklessLocker;
    address public LocklessManager;
    ILocklessReceipt public LocklessReceipt;

    event Minted(address indexed dst, uint wad);

    modifier lock {
        interactions += 1;
        uint256 _interactions = interactions;
        _;
        require(_interactions == interactions, "RG!");
    }

    constructor(address l, address m, ILocklessReceipt r) {
        LocklessLocker = l;
        LocklessManager = m;
        LocklessReceipt = r;
    }

    receive() external payable {
        deposit();
    }

    function deposit() public payable lock {
        {
        	(bool ok, ) = LocklessLocker.call{value:msg.value}("");
        	require(ok, "Lockless: Deposit Failed!");
        }
        require(LocklessReceipt.mint(msg.sender, msg.value));
        emit Minted(msg.sender, msg.value);
    }

    function setLocker(address l) external {
    	require(msg.sender==LocklessManager, "Not Manager!");
    	LocklessLocker = l;
    }

    function setManager(address m) external {
    	require(msg.sender==LocklessManager, "Not Manager!");
    	LocklessManager = m;
    }

}