// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "src/interfaces/IStakedUSDf.sol";

/**
 * @title StakingRewardsDistributor
 * @notice This contract manages and distributes staking rewards with emergency controls and authorization management
 */
contract StakingRewardsDistributor is AccessControl, ReentrancyGuard, Pausable {

    using SafeERC20 for IERC20;

    // ---------------------- Constants -----------------------
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    address internal constant _ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    // ---------------------- Immutables -----------------------
    /// @notice Falcon staking contract
    IStakedUSDf public immutable STAKING_VAULT;
    /// @notice Falcon USDf stablecoin
    IERC20 public immutable USDF_TOKEN;

    // ---------------------- Events --------------------------
    event TokensRescued(address indexed token, address indexed to, uint256 amount);

    // ---------------------- Errors --------------------------
    error InvalidZeroAddress();
    error InvalidAmount();
    error InsufficientFunds();
    error TransferFailed();

    constructor(IStakedUSDf _stakingVault, IERC20 _usdf, address _admin, address _operator) {
        if (address(_stakingVault) == address(0)) {
            revert InvalidZeroAddress();
        }
        if (address(_usdf) == address(0)) {
            revert InvalidZeroAddress();
        }
        if (_admin == address(0)) {
            revert InvalidZeroAddress();
        }
        if (_operator == address(0)) {
            revert InvalidZeroAddress();
        }

        STAKING_VAULT = _stakingVault;
        USDF_TOKEN = _usdf;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(PAUSER_ROLE, _admin);
        _grantRole(OPERATOR_ROLE, _operator);
    }

    /**
     * @notice Transfer rewards to staking contract by operator
     * @param _rewardsAmount Amount of rewards to transfer
     */
    function transferInRewards(uint256 _rewardsAmount) external whenNotPaused onlyRole(OPERATOR_ROLE) {
        USDF_TOKEN.approve(address(STAKING_VAULT), _rewardsAmount);
        STAKING_VAULT.transferInRewards(_rewardsAmount);
    }

    /**
     * @notice Emergency pause rewards distribution
     * @dev Only callable by PAUSER_ROLE
     */
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /**
     * @notice Resume rewards distribution
     * @dev Only callable by PAUSER_ROLE
     */
    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    /**
     * @notice Revoke approval for a specific contract
     * @param _token Token contract address
     * @param _spender Address to revoke approval from
     */
    function revokeApproval(address _token, address _spender) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_token == address(0)) {
            revert InvalidZeroAddress();
        }
        if (_spender == address(0)) {
            revert InvalidZeroAddress();
        }

        IERC20(_token).approve(_spender, 0);
    }

    /**
     * @notice Rescue tokens accidentally sent to contract
     * @param _token Token address
     * @param _to Receiver address
     * @param _amount Amount to rescue
     */
    function rescueTokens(
        address _token,
        address _to,
        uint256 _amount
    )
        external
        nonReentrant
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (_to == address(0)) {
            revert InvalidZeroAddress();
        }
        if (_amount == 0) {
            revert InvalidAmount();
        }

        if (_token == _ETH_ADDRESS) {
            (bool success,) = _to.call{value: _amount}("");
            if (!success) {
                revert TransferFailed();
            }
        } else {
            IERC20(_token).safeTransfer(_to, _amount);
        }
        emit TokensRescued(_token, _to, _amount);
    }

    /**
     * @dev Receive ETH
     */
    receive() external payable {}

}
