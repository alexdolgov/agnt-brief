// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "../interfaces/ICore.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/utils/Address.sol";

abstract contract CoreRef is Pausable {
    bytes32 public constant FARMS_ROLE =
        keccak256("FARMS_ROLE");

    event CoreUpdate(address indexed _core);

    ICore private _core;

    constructor(address core_) public {
        _core = ICore(core_);
    }

    modifier onlyGovernor() {
        require(
            _core.isGovernor(msg.sender),
            "CoreRef::onlyGovernor: Caller is not a governor"
        );
        _;
    }

    modifier onlyGuardianOrGovernor() {
        require(
            _core.isGovernor(msg.sender) || _core.isGuardian(msg.sender),
            "CoreRef::onlyGuardianOrGovernor: Caller is not a guardian or governor"
        );
        _;
    }

    modifier onlyFarms() {
        require(
            _core.hasRole(FARMS_ROLE, msg.sender),
            "CoreRef::onlyFarms: Caller is not a farms"
        );
        _;
    }


    /// @notice Set new Core reference address
    /// @param core_ The new core address
    function setCore(address core_) external onlyGovernor {
        _core = ICore(core_);
        emit CoreUpdate(core_);
    }

    /// @notice Set pausable methods to paused
    function pause() public onlyGuardianOrGovernor {
        _pause();
    }

    /// @notice Set pausable methods to unpaused
    function unpause() public onlyGuardianOrGovernor {
        _unpause();
    }

    /// @notice Address of the Core contract referenced
    /// @return ICore implementation address
    function core() public view returns (ICore) {
        return _core;
    }

}