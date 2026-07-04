// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Command} from "contracts/interfaces/compiler/Command.sol";
import {SafeCall} from "contracts/libraries/SafeCall.sol";

/**
 * @notice Utility to convert often-used methods into a Command object
 */
library CommandPresets {
    function approve(
        address _token,
        address _to,
        uint256 _amount
    ) internal pure returns (Command[] memory result_) {
        result_ = new Command[](2);
        result_[0] = Command(_token, 0, abi.encodeCall(IERC20.approve, (_to, 0)));
        result_[1] = Command(_token, 0, abi.encodeCall(IERC20.approve, (_to, _amount)));
    }

    function transfer(
        address _token,
        address _to,
        uint256 _amount
    ) internal pure returns (Command memory cmd_) {
        cmd_.target = _token;
        cmd_.payload = abi.encodeCall(IERC20.transfer, (_to, _amount));
    }
}

library CommandExecutor {
    using SafeCall for Command[];

    function execute(Command[] calldata _cmds) external {
        _cmds.safeCallAll();
    }
}

library CommandLibrary {
    using CommandLibrary for Command[];

    function last(Command[] memory _self) internal pure returns (Command memory) {
        return _self[_self.length - 1];
    }

    function asArray(Command memory _self) internal pure returns (Command[] memory result_) {
        result_ = new Command[](1);
        result_[0] = _self;
    }

    function append(
        Command[] memory _self,
        Command[] memory _cmds
    ) internal pure returns (Command[] memory result_) {
        result_ = new Command[](_self.length + _cmds.length);
        uint256 i;
        for (; i < _self.length; i++) {
            result_[i] = _self[i];
        }
        for (; i < result_.length; i++) {
            result_[i] = _cmds[i - _self.length];
        }
    }

    function push(
        Command[] memory _self,
        Command memory _cmd
    ) internal pure returns (Command[] memory result_) {
        result_ = new Command[](_self.length + 1);
        for (uint256 i; i < _self.length; i++) {
            result_[i] = _self[i];
        }
        result_[_self.length] = _cmd;
    }

    function populateWithApprove(
        Command memory _self,
        address _token,
        uint256 _amount
    ) internal pure returns (Command[] memory result_) {
        if (_amount != 0) {
            result_ = CommandPresets.approve(_token, _self.target, _amount).push(_self);
        } else {
            result_ = _self.asArray();
        }
    }
}
