// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.0;

import "./BaseStrategy.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {SafeTransferLib} from "solmate/utils/SafeTransferLib.sol";

contract MigrationStrategy is BaseStrategy {
    using SafeTransferLib for ERC20;

    address public abraMultiSig;
    int256 public lossValue;

    constructor(
        address _bentoBox,
        address _strategyToken,
        address _strategyExecutor,
        address _feeTo,
        address _owner,
        uint256 _fee,
        address _abraMultiSig
    ) BaseStrategy(_bentoBox, _strategyToken, _strategyExecutor, _feeTo, _owner, _fee) {
        abraMultiSig = _abraMultiSig;
    }

    function _skim(uint256 amount) internal override {
        strategyToken.safeTransfer(abraMultiSig, amount);
    }

    function _harvest(uint256 /*balance*/) internal view override returns (int256) {
        return int256(lossValue);
    }

    function withdraw(uint256 /*amount*/) external pure override returns (uint256) {
        revert();
    }

    function _exit() internal override {}

    function setLossValue(int256 _val) public onlyExecutor {
        lossValue = _val;
    }
}
