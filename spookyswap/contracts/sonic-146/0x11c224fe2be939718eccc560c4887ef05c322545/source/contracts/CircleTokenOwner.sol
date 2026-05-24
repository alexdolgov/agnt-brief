// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ICircleFiatToken} from "./interfaces/ICircleFiatToken.sol";

/// The Sonic Gateway contract handling the USDC token ownership.
/// It is intended to hold ownership of both the token and its UpgradeabilityProxy.
/// It allows Circle to acquire the token and proxy ownership.
/// The contract owner can reclaim ownership from this contract.
/// @custom:security-contact security@fantom.foundation
contract CircleTokenOwner is Ownable2Step {

    /// @notice Owned stablecoin token.
    ICircleFiatToken public immutable token;

    /// @notice Circle specified address allowed to call transferUSDCRoles().
    address public circleUpgrader;

    /// @notice Circle specified address was set.
    event CircleUpgraderSet(address newCircleUpgrader);

    /// @notice The ownership was successfully transferred.
    event TransferredToCircle();

    constructor(ICircleFiatToken _token, address _owner) Ownable(_owner) {
        require(address(_token) != address(0), "Token not set");
        require(_token.owner() == _owner, "Owner must be token owner");
        require(_token.admin() == _owner, "Owner must be proxy admin");
        token = _token;
    }

    /// @notice Transfer stablecoin ownership to Circle.
    /// 1. callable by an address that Circle specifies closer to the time of the upgrade.
    /// 2. Transfers the ProxyAdmin role to the function caller.
    /// 3. Transfers the Implementation Owner role to the address specified in the newTokenOwner parameter.
    function transferUSDCRoles(address newTokenOwner) external {
        require(newTokenOwner != address(0), "newTokenOwner not set");
        require(msg.sender == circleUpgrader, "sender not circleUpgrader");

        // change proxy admin first
        // must be done first - proxy admin cannot call implementation methods
        token.changeAdmin(msg.sender);

        // change token owner
        token.transferOwnership(newTokenOwner);

        emit TransferredToCircle();
    }

    /// @notice Transfer ownership of the token to this contract owner.
    /// Can only be called by the current contract owner.
    /// Will revert if this contract is the UpgradeabilityProxy admin because
    /// of the proxy limitation - returnProxyAdmin() needs to be called first.
    function returnTokenOwnership() external onlyOwner {
        token.transferOwnership(owner());
    }

    /// @notice Change admin of the AdminUpgradeabilityProxy to this contract owner.
    /// Can only be called by the current contract owner.
    function returnProxyAdmin() external onlyOwner {
        token.changeAdmin(owner());
    }

    /// @notice Set Circle address allowed to call transferUSDCRoles().
    /// Can only be called by the current contract owner.
    function setCircleUpgrader(address newCircleUpgrader) external onlyOwner {
        require(newCircleUpgrader != address(0), "newCircleUpgrader not set");
        circleUpgrader = newCircleUpgrader;
        emit CircleUpgraderSet(newCircleUpgrader);
    }

}
