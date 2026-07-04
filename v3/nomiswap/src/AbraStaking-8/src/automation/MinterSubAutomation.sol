// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {BaseAutomation} from "src/automation/BaseAutomation.sol";

import { OptionsBuilder } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/libs/OptionsBuilder.sol";
import { MessagingFee } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OAppSender.sol";

import {currentEpoch} from "src/libraries/EpochMath.sol";
import {MinterSub} from "src/token/MinterSub.sol";

contract MinterSubAutomation is BaseAutomation {

    using OptionsBuilder for bytes;

    address public forwarder; // chainlink calls from this address
    MinterSub public minterSub;
    uint32 public mainnetEid;
    uint32 public lastReportEpochCalled;
    uint128 public reportEpochGas;

    constructor(address _minterSub, uint32 _mainnetEid, uint128 _reportEpochGas) Ownable(msg.sender) {
        minterSub = MinterSub(_minterSub);
        mainnetEid = _mainnetEid;
        reportEpochGas = _reportEpochGas;
    }

    modifier onlyForwarder() {
        require(forwarder == _msgSender(), "Unauthorized forwarder");
        _;
    }

    receive() external payable{}

    function setForwarder(address _forwarder) external onlyOwner {
        forwarder = _forwarder;
    }

    function setMinterSub(address _minterSub) external onlyOwner {
        minterSub = MinterSub(_minterSub);
        lastReportEpochCalled = 0;
    }

    function setMainnetEid(uint32 _mainnetEid) external onlyOwner {
        mainnetEid = _mainnetEid;
    }

    function setReportEpochGas(uint128 _reportEpochGas) external onlyOwner {
        reportEpochGas = _reportEpochGas;
    }

    function withdraw(uint amount, address payable to) external onlyOwner {
        (bool success, ) = to.call{value: amount}("");
        require(success, "Withdraw failed");
    }

    function checkUpkeep(bytes calldata /* checkData */) external cannotExecute returns (bool /* upkeepNeeded */, bytes memory /* performData */) {
        (bool upkeepNeeded, bytes memory performData) = checkReportEpoch();
        if (upkeepNeeded) {
            return (upkeepNeeded, performData);
        }

        return checkSettle();
    }

    function performUpkeep(bytes calldata performData) external onlyForwarder {
        bool isReportEpoch = abi.decode(performData, (bool));
        if (isReportEpoch) {
            (, uint256 fee) = abi.decode(performData, (bool,uint256));
            lastReportEpochCalled = minterSub.openEpoch();
            bytes memory reportOptions = OptionsBuilder.newOptions().addExecutorLzReceiveOption(reportEpochGas, 0);
            minterSub.reportEpoch{value: fee}(mainnetEid, reportOptions);
        } else {
            minterSub.settle();
        }
    }

    function checkReportEpoch() private returns (bool /* upkeepNeeded */, bytes memory /* performData */) {
        uint32 _currentEpoch = currentEpoch();
        uint32 openEpoch = minterSub.openEpoch();
        if (lastReportEpochCalled == openEpoch || openEpoch >= _currentEpoch) {
            return (false, "");
        }

        bytes memory reportOptions = OptionsBuilder.newOptions().addExecutorLzReceiveOption(reportEpochGas, 0);
        MessagingFee memory fee = minterSub.quoteReport(mainnetEid, reportOptions);

        return (true , abi.encode(true, fee.nativeFee));
    }

    function checkSettle() private view returns (bool /* upkeepNeeded */, bytes memory /* performData */) {
        uint32 openEpoch = minterSub.openEpoch();
        if (openEpoch >= currentEpoch()) {
            return (false, "");
        }
        (uint32 emissionEpoch,,) = minterSub.emissions(openEpoch);
        if (emissionEpoch != openEpoch) {
            return (false, "");
        }
        return (true, abi.encode(false));
    }

}