// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./OwnerPausable.sol";
import "./StableSwapLib.sol";
import "./interfaces/IStableSwapPool.sol";

contract Swap is OwnerPausable, ReentrancyGuard, Initializable, IStableSwapPool {
    using StableSwapLib for StableSwapLib.SwapStorage;
    using SafeERC20 for IERC20;

    /// STATE VARS
    StableSwapLib.SwapStorage public swapStorage;
    address public feeDistributor;

    /// constants
    uint256 public constant MIN_RAMP_TIME = 1 days;
    uint256 public constant MAX_A = 1e10; // max_a with precision
    uint256 public constant MAX_A_CHANGE = 10;
    uint256 public constant MAX_ADMIN_FEE = 1e10; // 100%
    uint256 public constant MAX_SWAP_FEE = 1e8; // 50% (huge)

    function initialize(
        address _owner,
        address[] memory _coins,
        uint8[] memory _decimals,
        address lpToken,
        uint256 A_,
        uint256 _fee,
        uint256 _adminFee,
        address _feeDistributor
    ) external onlyOwner initializer {
        require(_coins.length == _decimals.length, "coins and decimals not matched");
        require(_feeDistributor != address(0), "feeDistributor = empty");
        uint256 numberOfCoins = _coins.length;
        uint256[] memory rates = new uint256[](numberOfCoins);
        IERC20[] memory coins = new IERC20[](numberOfCoins);
        for (uint256 i = 0; i < numberOfCoins; i++) {
            require(_coins[i] != address(0), "invalid coid address");
            require(_decimals[i] <= StableSwapLib.POOL_TOKEN_COMMON_DECIMALS, "decimals invalid");
            rates[i] = 10**(StableSwapLib.POOL_TOKEN_COMMON_DECIMALS - _decimals[i]);
            coins[i] = IERC20(_coins[i]);
        }

        swapStorage.balances = new uint256[](numberOfCoins);
        swapStorage.tokenMultipliers = rates;
        swapStorage.pooledTokens = coins;
        swapStorage.initialA = A_ * StableSwapLib.A_PRECISION;
        swapStorage.futureA = A_ * StableSwapLib.A_PRECISION;
        swapStorage.fee = _fee;
        swapStorage.adminFee = _adminFee;
        swapStorage.lpToken = LPToken(lpToken);
        feeDistributor = _feeDistributor;
        transferOwnership(_owner);
    }

    /// PUBLIC FUNCTIONS
    function addLiquidity(uint256[] memory amounts, uint256 minMintAmount)
        external
        override
        whenNotPaused
        nonReentrant
    {
        swapStorage.addLiquidity(amounts, minMintAmount);
    }

    function exchange(
        uint256 fromIndex,
        uint256 toIndex,
        uint256 inAmount,
        uint256 minOutAmount
    ) external override whenNotPaused nonReentrant {
        swapStorage.exchange(fromIndex, toIndex, inAmount, minOutAmount);
    }

    function removeLiquidity(uint256 lpAmount, uint256[] memory minAmounts) external override nonReentrant {
        swapStorage.removeLiquidity(lpAmount, minAmounts);
    }

    function removeLiquidityImbalance(uint256[] memory amounts, uint256 maxBurnAmount)
        external
        override
        nonReentrant
        whenNotPaused
    {
        swapStorage.removeLiquidityImbalance(amounts, maxBurnAmount);
    }

    /// VIEW FUNCTIONS
    function A() external view override returns (uint256) {
        return swapStorage.getA();
    }

    function getPoolTokens() external view override returns (IERC20[] memory) {
        return swapStorage.pooledTokens;
    }

    function getTokenPrecisionMultipliers() external view returns (uint256[] memory) {
        return swapStorage.tokenMultipliers;
    }

    function getBalances() external view override returns (uint256[] memory) {
        return swapStorage.balances;
    }

    function getNumberOfTokens() external view override returns (uint256) {
        return swapStorage.pooledTokens.length;
    }

    function getAdminBalances() external view override returns (uint256[] memory adminBalances) {
        uint256 length = swapStorage.pooledTokens.length;
        adminBalances = new uint256[](length);
        for (uint256 i = 0; i < length; i++) {
            adminBalances[i] = swapStorage.getAdminBalance(i);
        }
    }

    function calculateTokenAmount(uint256[] calldata amounts, bool deposit) external view override returns (uint256) {
        return swapStorage.calculateTokenAmount(amounts, deposit);
    }

    function calculateSwap(
        uint256 inIndex,
        uint256 outIndex,
        uint256 inAmount
    ) external view override returns (uint256) {
        return swapStorage.calculateSwap(inIndex, outIndex, inAmount);
    }

    /// RESTRICTED FUNCTION
    /**
     * @notice Sets the admin fee
     * @dev adminFee cannot be higher than 100% of the swap fee
     * swap fee cannot be higher than 1% of each swap
     * @param newSwapFee new swap fee to be applied on future transactions
     * @param newAdminFee new admin fee to be applied on future transactions
     */
    function setFee(uint256 newSwapFee, uint256 newAdminFee) external onlyOwner {
        require(newSwapFee <= MAX_SWAP_FEE, "> maxSwapFee");
        require(newAdminFee <= MAX_ADMIN_FEE, "> maxAdminFee");
        swapStorage.adminFee = newAdminFee;
        swapStorage.fee = newSwapFee;

        emit NewFee(newSwapFee, newAdminFee);
    }

    /**
     * @notice Start ramping up or down A parameter towards given futureA_ and futureTime_
     * Checks if the change is too rapid, and commits the new A value only when it falls under
     * the limit range.
     * @param futureA the new A to ramp towards
     * @param futureATime timestamp when the new A should be reached
     */
    function rampA(uint256 futureA, uint256 futureATime) external onlyOwner {
        require(block.timestamp >= swapStorage.initialATime + (1 days), "< rampDelay"); // please wait 1 days before start a new ramping
        require(futureATime >= block.timestamp + (MIN_RAMP_TIME), "< minRampTime");
        require(0 < futureA && futureA < MAX_A, "futureA outOfRange");

        uint256 initialAPrecise = swapStorage.getAPrecise();
        uint256 futureAPrecise = futureA * StableSwapLib.A_PRECISION;

        if (futureAPrecise < initialAPrecise) {
            require(futureAPrecise * (MAX_A_CHANGE) >= initialAPrecise, "futureA is too small");
        } else {
            require(futureAPrecise <= initialAPrecise * (MAX_A_CHANGE), "futureA is too large");
        }

        swapStorage.initialA = initialAPrecise;
        swapStorage.futureA = futureAPrecise;
        swapStorage.initialATime = block.timestamp;
        swapStorage.futureATime = futureATime;

        emit RampA(initialAPrecise, futureAPrecise, block.timestamp, futureATime);
    }

    function stopRampA() external onlyOwner {
        require(swapStorage.futureATime > block.timestamp, "alreadyStopped");
        uint256 currentA = swapStorage.getA();

        swapStorage.initialA = currentA;
        swapStorage.futureA = currentA;
        swapStorage.initialATime = block.timestamp;
        swapStorage.futureATime = block.timestamp;

        emit StopRampA(currentA, block.timestamp);
    }

    function withdrawAdminFee() external onlyOwner {
        for (uint256 i = 0; i < swapStorage.pooledTokens.length; i++) {
            IERC20 token = swapStorage.pooledTokens[i];
            uint256 balance = token.balanceOf(address(this)) - (swapStorage.balances[i]);
            if (balance != 0) {
                token.safeTransfer(feeDistributor, balance);
                emit CollectProtocolFee(address(token), balance);
            }
        }
    }
}
