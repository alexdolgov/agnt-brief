// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin-4.5.0/contracts/access/Ownable.sol";
import "@openzeppelin-4.5.0/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IVECakeOwnerFunction.sol";

contract VECakeOwner is Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable CAKE;
    IVECakeOwnerFunction immutable VECAKE;

    // Owenr can control whether anyone can set whitelist by this
    bool public whitelistSwitch;

    event SetWhitelistSwitch(address indexed owner, bool status);
    event SetWhitelist(address indexed user, bool status);
    event SetVECakeOwner(address indexed user, address indexed owner);

    /**
     * @notice Constructor
     * @param _VECake: VECake contract
     /// @param _cake Cake token address.
     */
    constructor(IVECakeOwnerFunction _VECake, IERC20 _cake) {
        VECAKE = _VECake;
        CAKE = _cake;

        CAKE.safeApprove(address(_VECake), type(uint256).max);
    }

    /// @notice Set breaker
    /// @param _breaker The new value of breaker 0 if off, 1 if on
    function setBreaker(uint256 _breaker) external onlyOwner {
        VECAKE.setBreaker(_breaker);
    }

    function setEarlyWithdrawConfig(
        uint64 _newEarlyWithdrawBpsPerWeek,
        uint64 _newRedistributeBps,
        address _newTreasuryAddr,
        address _newRedistributeAddr
    ) external onlyOwner {
        VECAKE.setEarlyWithdrawConfig(
            _newEarlyWithdrawBpsPerWeek,
            _newRedistributeBps,
            _newTreasuryAddr,
            _newRedistributeAddr
        );
    }

    function setWhitelistedCallers(address[] calldata callers, bool ok) external onlyOwner {
        VECAKE.setWhitelistedCallers(callers, ok);
    }

    function setWhitelistedRedistributors(address[] calldata callers, bool ok) external onlyOwner {
        VECAKE.setWhitelistedRedistributors(callers, ok);
    }

    /// @notice Update delegator
    /// @param _delegator The delegator address
    /// @param _isDelegator Is delegator or not
    /// @param _limitTimestampForEarlyWithdraw Delegator can not call earlyWithdraw before limit time.
    function updateDelegator(
        address _delegator,
        bool _isDelegator,
        uint40 _limitTimestampForEarlyWithdraw
    ) external onlyOwner {
        VECAKE.updateDelegator(_delegator, _isDelegator, _limitTimestampForEarlyWithdraw);
    }

    /// @notice Set limitTimeOfConvert
    /// @param _limitTime The limit time
    function setLimitTimeOfConvert(uint256 _limitTime) external onlyOwner {
        VECAKE.setLimitTimeOfConvert(_limitTime);
    }

    /// @notice Set ealy withdraw switch
    /// @param _earlyWithdrawSwitch early withdraw switch
    function setEarlyWithdrawSwitch(bool _earlyWithdrawSwitch) external onlyOwner {
        VECAKE.setEarlyWithdrawSwitch(_earlyWithdrawSwitch);
    }

    /// @notice Set emergency withdraw switch
    /// @param _emergencyWithdrawSwitch early withdraw switch
    function setEmergencyWithdrawSwitch(bool _emergencyWithdrawSwitch) external onlyOwner {
        VECAKE.setEmergencyWithdrawSwitch(_emergencyWithdrawSwitch);
    }

    /// @notice Set no penalty early withdraw user
    /// @param _user no penalty early withdraw user
    /// @param _status no penalty or not
    function setNoPenaltyForEarlyWithdraw(address _user, bool _status) external onlyOwner {
        VECAKE.setNoPenaltyForEarlyWithdraw(_user, _status);
    }

    /// @notice Inject cake for delegator
    /// @param _delegator The delegator address
    /// @param _amount Cake amount
    function injectToDelegator(address _delegator, uint256 _amount) external onlyOwner {
        CAKE.safeTransferFrom(msg.sender, address(this), _amount);
        VECAKE.injectToDelegator(_delegator, _amount);
    }

    /// @notice Set farm booster Contract address
    /// @param _farmBooster The farm booster Contract address
    function setFarmBooster(address _farmBooster) external onlyOwner {
        VECAKE.setFarmBooster(_farmBooster);
    }

    /// @notice Set whitelist switch
    /// @param _whitelistSwitch Whitelist switch
    function setWhitelistSwitch(bool _whitelistSwitch) external onlyOwner {
        whitelistSwitch = _whitelistSwitch;
        emit SetWhitelistSwitch(msg.sender, _whitelistSwitch);
    }

    /// @notice Set whitelist
    /// @dev Allow contract to set whitelist in VECake.
    /// @param _status Whitelist or not
    function setWhitelist(bool _status) external {
        require(whitelistSwitch, "Permission denied");
        require(_isContract(msg.sender), "Not contract");
        address[] memory user = new address[](1);
        user[0] = msg.sender;
        VECAKE.setWhitelistedCallers(user, _status);
        emit SetWhitelist(msg.sender, _status);
    }

    /// @notice Set new owner for VECake
    /// @param _newOwner VECake new owner
    function setVECakeOwner(address _newOwner) external onlyOwner {
        VECAKE.transferOwnership(_newOwner);
        emit SetVECakeOwner(msg.sender, _newOwner);
    }

    /**
     * @notice Checks if address is a contract
     */
    function _isContract(address addr) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }
}
