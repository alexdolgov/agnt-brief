// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import "./interfaces/IBlast.sol";
import "./interfaces/ISquadGas.sol";

contract SquadGas is ISquadGas {
    IBlast public constant BLAST = IBlast(0x4300000000000000000000000000000000000002);
    address public _manager;

    modifier onlyManager() {
        require(msg.sender == _manager, "FORBIDDEN");
        _;
    }

    constructor(address manager) {
        BLAST.configureClaimableGas();
        _manager = manager;
    }

    function claimGas(address _recipient, uint256 _minClaimRateBips)
        external
        override
        onlyManager
        returns (uint256 amount)
    {
        if (_minClaimRateBips == 0) {
            amount = BLAST.claimMaxGas(address(this), _recipient);
        } else {
            amount = BLAST.claimGasAtMinClaimRate(address(this), _recipient, _minClaimRateBips);
        }
        emit ClaimGas(_recipient, amount);
    }

    function setManager(address manager) external override onlyManager {
        _manager = manager;
    }
}