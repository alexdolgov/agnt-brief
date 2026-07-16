// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./utils/SafeMath.sol";

interface IERC20Decimals {
    function decimals() external view returns (uint8);
}

/**
 * @title A vault for obtaining USDz outside ETH mainnet.
 */
contract VaultV2 is AccessControl, Pausable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");

    // Max cap for now (cap * decimals)
    uint256 public cap;
    // Used to calculate reserve USDz in pool; 18 decimals
    uint256 public reserve;
    // Used to calculate USDC in pool; 6 decimals
    uint256 public pooledUSDC;
    // Used to calculate total executed USDC; 6 decimals
    uint256 public executed;

    // Deposit token.
    IERC20 public immutable usdc;
    // Get back token.
    IERC20 public immutable USDz;

    event Deposit(address indexed user, uint256 indexed amount);
    event IncreaseCap(uint256 indexed amount);
    event Execute(uint256 indexed amount);

    constructor(address admin, IERC20 _usdc, IERC20 _USDz) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        usdc = _usdc;
        USDz = _USDz;
    }

    /**
     * @notice Pause the contract. Revert if already paused.
     */
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /**
     * @notice Unpause the contract. Revert if already unpaused.
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function stablecoinScalingFactor() internal view returns (uint256) {
        return uint256(1e18).div(10 ** IERC20Decimals(address(usdc)).decimals()) ;
    }

    /**
     * @notice Deposit USDC.
     * Emits a `Deposit` event.
     * input is 6 decimals
     * @param _amount the amount of USDC
     */
    function deposit(uint256 _amount) external whenNotPaused {
        require(_amount > 0, "DEPOSIT_AMOUNT_IS_ZERO");
        require(stablecoinScalingFactor() >= 1, "Incorrect stablecoin decimals");
        require(stablecoinScalingFactor() <= 1e12, "Incorrect stablecoin decimals");
        require(reserve >= _amount.mul(stablecoinScalingFactor()), "DEPOSIT_AMOUNT_EXCEED_LIMIT");

        IERC20(usdc).safeTransferFrom(msg.sender, address(this), _amount);
        uint256 USDzAmount = _amount.mul(stablecoinScalingFactor());
        pooledUSDC = pooledUSDC.add(_amount);
        reserve = reserve.sub(USDzAmount);
        IERC20(USDz).safeTransfer(msg.sender, USDzAmount);

        emit Deposit(msg.sender, _amount);
    }

    /**
     * @notice Increase cap.
     * Emits a `IncreaseCap` event.
     *
     * @param _amount the amount of USDz
     */
    function increaseCap(uint256 _amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_amount > 0, "DEPOSIT_AMOUNT_IS_ZERO");

        IERC20(USDz).safeTransferFrom(msg.sender, address(this), _amount);
        cap = cap.add(_amount);
        reserve = reserve.add(_amount);

        emit IncreaseCap(_amount);
    }

    /**
     * @notice Execute USDC to buy private credit.
     * Emits a `Execute` event.
     *
     * @param _amount the amount of USDC (6 decimals).
     */
    function execute(uint256 _amount) external onlyRole(POOL_MANAGER_ROLE) {
        require(_amount > 0, "EXECUTE_AMOUNT_IS_ZERO");

        executed = executed.add(_amount);
        pooledUSDC = pooledUSDC.sub(_amount);
        IERC20(usdc).safeTransfer(msg.sender, _amount);

        emit Execute(_amount);
    }

    /**
     * @notice Rescue ERC20 tokens locked up in this contract.
     * @param token ERC20 token contract address.
     * @param to recipient address.
     * @param amount amount to withdraw.
     */
    function rescueERC20(IERC20 token, address to, uint256 amount) external onlyRole(POOL_MANAGER_ROLE) {
        // If is USDC, check total executed amount first.
        if (address(token) == address(usdc)) {
            require(amount <= usdc.balanceOf(address(this)).sub(pooledUSDC), "USDC_RESCUE_AMOUNT_EXCEED_DEBIT");
        }
        if (address(token) == address(USDz)) {
            require(amount <= USDz.balanceOf(address(this)).sub(reserve), "USDz_RESCUE_AMOUNT_EXCEED_DEBIT");
        }
        token.safeTransfer(to, amount);
    }
}
