// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import "@openzeppelin4/contracts-upgradeable/access/OwnableUpgradeable.sol";

interface IDelegateStorage {
	function delegations(address trader) external returns (address);
}

abstract contract Delegatable is OwnableUpgradeable {
	bytes32 constant SENDER_OVERRIDE_SLOT = 0xf53a32db548c3eba089f4b6326169f5330e4505c04502e0ec31418c240114950; // keccak256("SENDER_OVERRIDE_SLOT")
	bytes32 constant DELEGATE_STORAGE_SLOT = 0x266a42f962efc0b7cdc3836bea118f24adabe0614d86908a8a3967a6c6d77bba; // keccak256("DELEGATE_STORAGE_SLOT")

	function setDelegateStorage(address delegateStorage_) public onlyOwner {
		assembly {
			sstore(DELEGATE_STORAGE_SLOT, delegateStorage_)
		}
	}

	function getDelegateStorage() public view returns (address delegateStorage) {
		assembly {
			delegateStorage := sload(DELEGATE_STORAGE_SLOT)
		}
	}

	function setSenderOverride(address senderOverride) internal {
		assembly {
			sstore(SENDER_OVERRIDE_SLOT, senderOverride)
		}
	}

	function getSenderOverride() public view returns (address senderOverride) {
		assembly {
			senderOverride := sload(SENDER_OVERRIDE_SLOT)
		}
	}

	function delegations(address trader) internal returns (address) {
		return IDelegateStorage(getDelegateStorage()).delegations(trader);
	}

	function delegatedAction(address trader, bytes calldata call_data) external returns (bytes memory) {
		require(IDelegateStorage(getDelegateStorage()).delegations(trader) == msg.sender, "DELEGATE_NOT_APPROVED");

		setSenderOverride(trader);
		(bool success, bytes memory result) = address(this).delegatecall(call_data);
		if (!success) {
			// Next 5 lines from https://ethereum.stackexchange.com/a/83577 (return the original revert reason)
			if (result.length < 68) revert();
			assembly {
				result := add(result, 0x04)
			}
			revert(abi.decode(result, (string)));
		}

		setSenderOverride(address(0));

		return result;
	}

	function _msgSender() internal view override returns (address) {
		address senderOverride = getSenderOverride();
		if (senderOverride == address(0)) {
			return msg.sender;
		} else {
			return senderOverride;
		}
	}
}
