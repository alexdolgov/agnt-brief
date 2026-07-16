// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {IFeeModule} from "../interfaces/IFeeModule.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

contract Fee is IFeeModule {
    uint256 constant ONE_HUNDRED_PERCENT = 10 ** 4;

    uint256 public feeAccrued;

    uint256 public lastFeeAccrued;

    uint256 public feeIndex;

    address public immutable vault;

    address public beneficiary;

    constructor(address _vault) {
        vault = _vault;
    }

    modifier onlyTreasury() {
        require(
            msg.sender == IVault(vault).getTreasury(),
            "AsyncWithdraw: Only Treasury"
        );
        _;
    }

    function accrueFee() external {
        _accrueFee();
    }

    function claimFee() external {
        _accrueFee();
        IVault(vault).claimFee(feeAccrued, beneficiary);

        feeAccrued = 0;
    }

    function _accrueFee() internal {
        uint256 aum = IERC4626(vault).totalAssets();
        feeAccrued +=
            (aum * (block.timestamp - lastFeeAccrued) * feeIndex) /
            (ONE_HUNDRED_PERCENT * 31536000);
        lastFeeAccrued = block.timestamp;
    }

    function setFeeIndex(uint256 newFeeIndex) external onlyTreasury {
        if (feeIndex == newFeeIndex || feeIndex > ONE_HUNDRED_PERCENT)
            revert InvalidFeeIndex();

        _accrueFee();

        feeIndex = newFeeIndex;

        emit FeeUpdated(newFeeIndex, block.timestamp);
    }

    function setBeneficiary(address newBeneficiary) external onlyTreasury {
        if (newBeneficiary == beneficiary || newBeneficiary == address(0))
            revert InvalidBeneficiary();

        beneficiary = newBeneficiary;

        emit BeneficiaryUpdated(newBeneficiary, block.timestamp);
    }

    function getFeeAccrued() external view returns (uint256) {
        return feeAccrued;
    }
}
