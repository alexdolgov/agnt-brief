// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

struct ManualIRMStorage {
    uint256 interestRate;
}

library ManualIRM {
    bytes32 internal constant SLOT = keccak256(bytes("hyperstable.storage.manualIRM"));

    function getStorage() internal pure returns (ManualIRMStorage storage s) {
        bytes32 slot = SLOT;
        assembly {
            s.slot := slot
        }
    }

    function setInterestRate(uint256 _interestRate) internal {
        setInterestRate(getStorage(), _interestRate);
    }

    function setInterestRate(ManualIRMStorage storage s, uint256 _interestRate) internal {
        s.interestRate = _interestRate;
    }

    function interestRate() internal view returns (uint256) {
        return interestRate(getStorage());
    }

    function interestRate(ManualIRMStorage storage s) internal view returns (uint256) {
        return s.interestRate;
    }
}
