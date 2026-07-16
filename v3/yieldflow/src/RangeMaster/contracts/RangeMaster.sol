// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { IUniswapV3Pool } from "./interfaces/IUniswapV3Pool.sol";
import { IPancakeV3Pool } from "./interfaces/IPancakeV3Pool.sol";
import { IUniswapV3Factory } from "./interfaces/IUniswapV3Factory.sol";
import { IQuoter } from "./interfaces/IQuoter.sol";
import { IWETH9 } from "./interfaces/IWETH9.sol";
import { IYieldManager } from "./interfaces/IYieldManager.sol";
import { TickMath } from "./libraries/TickMath.sol";
import { ISwapRouter } from "./interfaces/ISwapRouter.sol";
import { LiquidityAmounts } from "./libraries/LiquidityAmounts.sol";
import { INonfungiblePositionManager } from "./interfaces/INonfungiblePositionManager.sol";
import { IRangePositionManager } from "./interfaces/IRangePositionManager.sol";

/// @title RangeMaster Contract
/// @notice Manages liquidity provision and fee collection across multiple DEXs
/// @dev This contract manages an array of RangePositionManagers
/// @dev This contract is designed to work only with native ETH, users with WETH should unwrap prior to interact with the contract
/// @dev This contract is designed to work with non deflationary tokens and tokens without taxation
contract RangeMaster is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using Address for address payable;

    /// @dev Enumeration for supported DEXs position types.
    enum PositionType{ UNISWAP, PANCAKE }

    /// @dev Structure to represent a range position in a DEX.
    struct RangePosition {
        IRangePositionManager rangePositionAddress;
        uint256 suggestedWeight;
        PositionType posType;
    }

    struct UserInfo {
        uint256 liquidity;
        uint256 token0Balance;
        uint256 token1Balance;
        uint256 cakeTokenBalance;
        uint256 token0Lifetime;
        uint256 token1Lifetime;
    }

    struct CalculationValues {
        address positionManager;
        uint256 currentTokenId;
        uint24 fee;
        uint160 sqrtPriceX96;
        int24 tick;
        int24 tickLower;
        int24 tickUpper;
        uint256 userLiquidity;
        uint256 weight;
    }

    struct ReturnBool {
        address positionManager;
        bool indicator;
    }

    struct ReturnPendingFees {
        address positionManager;
        uint256 token0Balance;
        uint256 token1Balance;
        uint256 bonusTokenBalance;
        uint256 token0Lifetime;
        uint256 token1Lifetime;
    }

    struct ReturnLiquidity {
        address positionManager;
        uint256 token0Balance;
        uint256 token1Balance;
    }

    /// @dev Array of range position managers.
    RangePosition[] public rangePositionManagers;
    /// @dev Owner of the contract.
    address public owner;

    /// @dev Addresses for wrapped ether and tokens involved in liquidity provision.
    address public immutable WETH;
    address public immutable token0;
    address public immutable token1;
    address public immutable bonusToken;
    /// @dev Lock status for contract operations.
    bool public locked;
    /// @dev Length of the `rangePositionManagers` array.
    uint256 public contractsLen;
    /// @dev Yield manager contract for managing yield farming.
    IYieldManager public yieldManager;
    /// @dev MaxAmount of RangePositionManagers
    uint256 public constant maxRangePositionManager = 4;
    /// @dev Factor used for weight calculations, representing 100%.
    uint256 public constant FACTOR = 1000000;

    /// @dev Pending owner of the contract, used in two-step ownership transfer.
    address private _pendingOwner;


    /// @notice Emits when new sponsorship is created.
    /// @param sponsor The address of the sponsor.
    /// @param client The address of the client being sponsored.
    event NewSponsor(address indexed sponsor, address indexed client);
    /// @notice Emits when an ownership transfer starts.
    /// @param previousOwner The address of the previous owner.
    /// @param newOwner The address of the new owner.
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    /// @notice Emits when a new owner is set.
    /// @param previousOwner The address of the old owner.
    /// @param newOwner The address of the new owner.
    event NewOwner(address indexed previousOwner, address indexed newOwner);
    /// @notice Emits when a new yield manager is set.
    /// @param oldYieldManager The address of the old yield manager.
    /// @param yieldManager The address of the new yield manager.
    event NewYieldManager(address indexed oldYieldManager, address indexed yieldManager);
    /// @notice Emitted when tokens are recovered from the contract.
    /// @param token The token address recovered
    /// @param amount The amount of tokens
    /// @param to The address to which the tokens were sent.
    event Recovered(address indexed token, uint256 amount, address to);
    /// @notice Emitted when ETH are recovered from the contract.
    /// @param amount The amount of ETH recovered.
    /// @param to The address to which ETH were sent.
    event RecoveredETH(uint256 amount, address indexed to);
    /// @notice Emitted when locked is changed
    /// @param oldLocked The value of locked old
    /// @param newLocked The value of locked
    event LockedChanged(bool oldLocked, bool newLocked);

    error Unauthorized();
    error ZeroAddress();
    error ZeroAddressOwner();
    error ZeroAddressWETH();
    error ZeroAddressTokens();
    error ZeroAddressYieldManager();
    error ZeroAddressRangePositionManagers();
    error LenMismatchRangePositionManagers();
    error LenMismatchPositionTypes();
    error LenMismatchAmountDesired1Minimum();
    error LenMismatchLiquidity();
    error LenMismatchRM1();
    error LenMismatchRM();
    error LenMismatchRM3();
    error LenMismatchRM4();
    error WeightIs0();
    error WeightsNotAddingUp();
    error Locked();
    error MaxRangePositionManagerBreached();

    /// @dev Modifier to restrict function access to the contract owner.
    modifier onlyOwner {
        _onlyOwner();
        _;
    }

    /// @notice Constructs the RangeMaster contract.
    /// @dev Initializes contract with given parameters, setting up range positions and tokens.
    /// @param _rangePositionManagers Addresses of the range position manager contracts.
    /// @param _rangeWeights Weights of each range position manager.
    /// @param _positionTypes Types of positions (UNISWAP, PANCAKE) for each manager.
    /// @param _owner Address of the contract owner.
    /// @param _token0 Address of the first token in the liquidity pairs.
    /// @param _token1 Address of the second token in the liquidity pairs.
    /// @param _bonusToken Address of the bonus token, if any.
    /// @param _WETH Address of the Wrapped Ether token.
    /// @param _yieldManager Address of the yield manager contract.
    constructor(
        address[] memory _rangePositionManagers,
        uint256[] memory _rangeWeights,
        PositionType[] memory _positionTypes,
        address _owner,
        address _token0,
        address _token1,
        address _bonusToken,
        address _WETH,
        address _yieldManager
    )
    {
        if(_owner == address(0)){
            revert ZeroAddressOwner();
        }
        if(_WETH == address(0)){
            revert ZeroAddressWETH();
        }
        if(_rangePositionManagers.length > maxRangePositionManager) {
            revert MaxRangePositionManagerBreached();
        }
        if(_rangeWeights.length != _rangePositionManagers.length){
            revert LenMismatchRangePositionManagers();
        }
        if(_rangeWeights.length != _positionTypes.length){
            revert LenMismatchPositionTypes();
        }
        if(_token0 == address(0) || _token1 == address(0)){
            revert ZeroAddressTokens();
        }
        if(_yieldManager == address(0)){
            revert ZeroAddressYieldManager();
        }

        uint256 weightCheck;

        // loop over the provided addresses
        for (uint256 i; i < _rangePositionManagers.length; i++) {
            if(_rangePositionManagers[i] == address(0)){
                revert ZeroAddressRangePositionManagers();
            }
            if(_rangeWeights[i] == 0){
                revert WeightIs0();
            }

            rangePositionManagers.push(RangePosition({
                rangePositionAddress: IRangePositionManager(_rangePositionManagers[i]),
                suggestedWeight: _rangeWeights[i],
                posType: _positionTypes[i]
            }));

            weightCheck = weightCheck + _rangeWeights[i];
        }

        if(weightCheck != FACTOR){
            revert WeightsNotAddingUp();
        }

        // set values
        owner = _owner;
        token0 = _token0;
        token1 = _token1;
        bonusToken = _bonusToken;
        WETH = _WETH;
        yieldManager = IYieldManager(_yieldManager);
        contractsLen = rangePositionManagers.length;
    }

    // default fallback and receive functions
    fallback() external payable {}
    receive() external payable {}

    /// @notice Updates the range position managers with new addresses and weights.
    /// @dev This function can only be called by the owner.
    /// @param _rangePositionManagers New addresses for the range position managers.
    /// @param _rangeWeights New weights for each range position manager.
    /// @param _positionTypes Types of positions (UNISWAP, PANCAKE) for each new manager.
    function updateRangePositionManagers(
        address[] memory _rangePositionManagers,
        uint256[] memory _rangeWeights,
        PositionType[] memory _positionTypes
    )
    external
    onlyOwner
    nonReentrant
    {
        if(_rangePositionManagers.length > maxRangePositionManager) {
            revert MaxRangePositionManagerBreached();
        }
        if(_rangeWeights.length != _rangePositionManagers.length){
            revert LenMismatchRangePositionManagers();
        }
        if(_rangeWeights.length != _positionTypes.length){
            revert LenMismatchPositionTypes();
        }

        uint256 weightCheck;

        // delete old array
        delete rangePositionManagers;

        // loop over the provided addresses
        for (uint256 i; i < _rangePositionManagers.length; i++) {
            if(_rangePositionManagers[i] == address(0)){
                revert ZeroAddressRangePositionManagers();
            }
            if(_rangeWeights[i] == 0){
                revert WeightIs0();
            }

            rangePositionManagers.push(RangePosition({
                rangePositionAddress: IRangePositionManager(_rangePositionManagers[i]),
                suggestedWeight: _rangeWeights[i],
                posType: _positionTypes[i]
            }));

            weightCheck = weightCheck + _rangeWeights[i];
        }

        if(weightCheck != FACTOR){
            revert WeightsNotAddingUp();
        }

        contractsLen = rangePositionManagers.length;
    }

    /// @notice Collects fees accrued from all positions for the caller.
    /// @dev Withdraws fees in `token0`, `token1`, and `bonusToken` to the caller.
    function collect()
    external
    nonReentrant
    {
        // loop over the position Managers
        for(uint256 i; i < rangePositionManagers.length; i++) {
            // collect
            rangePositionManagers[i].rangePositionAddress.userCollect(
                msg.sender
            );
        }
    }

    /// @notice Allows public collection of fees from all managed positions.
    /// @dev Similar to `collect` but can be called by anyone to trigger fee collection.
    function publicCollect()
    external
    nonReentrant
    {
        // loop over the position Managers
        for(uint256 i; i < rangePositionManagers.length; i++) {
            // publicCollect
            rangePositionManagers[i].rangePositionAddress.publicCollect();
        }
    }

    /// @notice Decreases liquidity in managed positions for the caller.
    /// @dev Decreases liquidity based on specified amounts and updates token balances.
    /// @param amountDesired0Minimum Minimum amounts to receive of `token0`.
    /// @param amountDesired1Minimum Minimum amounts to receive of `token1`.
    /// @param liquidity Amounts of liquidity to be decreased.
    function decreaseLiquidity(
        uint256[] memory amountDesired0Minimum,
        uint256[] memory amountDesired1Minimum,
        uint128[] memory liquidity
    )
    external
    nonReentrant
    {
        if(amountDesired0Minimum.length != rangePositionManagers.length){
            revert LenMismatchRangePositionManagers();
        }
        if(amountDesired0Minimum.length != amountDesired1Minimum.length){
            revert LenMismatchAmountDesired1Minimum();
        }
        if(amountDesired1Minimum.length != liquidity.length){
            revert LenMismatchLiquidity();
        }

        // loop over the position Managers
        for(uint256 i; i < rangePositionManagers.length; i++) {
            // decrease
            if (liquidity[i] > 0) {
                rangePositionManagers[i].rangePositionAddress.decreaseLiquidityUser(
                    amountDesired0Minimum[i],
                    amountDesired1Minimum[i],
                    liquidity[i],
                    msg.sender
                );
            }
        }
    }

    /// @notice Increases liquidity in managed positions for the caller.
    /// @dev Adds liquidity based on desired amounts and optional sponsorship.
    /// @param amountDesired0 Desired amounts of `token0` to use.
    /// @param amountDesired1 Desired amounts of `token1` to use.
    /// @param amount0Min Minimum amounts of `token0`.
    /// @param amount1Min Minimum amounts of `token1`.
    /// @param sponsor Address of the sponsor, if any.
    function increaseLiquidity(
        uint256[] memory amountDesired0,
        uint256[] memory amountDesired1,
        uint256[] memory amount0Min,
        uint256[] memory amount1Min,
        address sponsor
    )
    external
    payable
    nonReentrant
    {
        if(amountDesired0.length != rangePositionManagers.length){
            revert LenMismatchRM1();
        }
        if(amountDesired0.length != amountDesired1.length){
            revert LenMismatchRM();
        }
        if(amountDesired0.length != amount0Min.length){
            revert LenMismatchRM3();
        }
        if(amount0Min.length != amount1Min.length){
            revert LenMismatchRM4();
        }
        if(locked){
            revert Locked();
        }

        // check sponsor
        if (sponsor != address(0) && sponsor != msg.sender && yieldManager.getAffiliate(msg.sender) == address(0)) {
            yieldManager.setAffiliate(msg.sender, sponsor);
            emit NewSponsor(sponsor, msg.sender);
        }

        // loop over the position Managers
        for(uint256 i; i < rangePositionManagers.length; i++) {

            // handle approvals
            if (token0 != WETH) {
                IERC20(token0).safeTransferFrom(msg.sender, address(this), amountDesired0[i]);
                IERC20(token0).forceApprove(address(rangePositionManagers[i].rangePositionAddress), amountDesired0[i]);
            }

            if (token1 != WETH) {
                IERC20(token1).safeTransferFrom(msg.sender, address(this), amountDesired1[i]);
                IERC20(token1).forceApprove(address(rangePositionManagers[i].rangePositionAddress), amountDesired1[i]);
            }

            uint256 ETHValue;
            // calculate the ETH value
            if (token0 == WETH) {
                ETHValue = amountDesired0[i];
            }
            if (token1 == WETH) {
                ETHValue = amountDesired1[i];
            }

            // increase liquidity
            rangePositionManagers[i].rangePositionAddress.increaseLiquidityUser{value : ETHValue}(
                amountDesired0[i],
                amountDesired1[i],
                amount0Min[i],
                amount1Min[i],
                msg.sender
            );
        }
    }

    /// owner recover token
    /// @dev used to recover tokens from the contract
    /// @param token the token to recover
    /// @param amount the amount to recover
    /// @param to the address to recover to
    function recoverERC20(address token, uint256 amount, address to) external onlyOwner nonReentrant {
        IERC20(token).safeTransfer(to, amount);
        emit Recovered(token, amount, to);
    }

    /// owner recover ETH
    /// @dev used to recover ETH from the contract
    /// @param amount the amount to recover
    /// @param to the address to recover to
    function recoverETH(uint256 amount, address to) external onlyOwner nonReentrant {
        payable(to).sendValue(amount);
        emit RecoveredETH(amount, to);
    }

    /// sets the new yield manager
    /// @dev sets the value of the yield manager
    /// @param _newYieldManager the new value for _newYieldManager
    function changeYieldManager(address _newYieldManager) external onlyOwner {
        if(_newYieldManager == address(0)){
            revert ZeroAddress();
        }

        address oldYieldManager = address(yieldManager);
        yieldManager = IYieldManager(_newYieldManager);
        emit NewYieldManager(oldYieldManager, _newYieldManager);
    }

    /// sets the new locked status
    /// @dev sets the value of locked
    /// @param _newLocked the new value for locked
    function changeLocked(bool _newLocked) external onlyOwner {
        bool oldLocked = locked;
        locked = _newLocked;
        emit LockedChanged(oldLocked, _newLocked);
    }

    /**
    * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function changeOwner(address newOwner) external onlyOwner {
        if(newOwner == address(0)){
            revert ZeroAddress();
        }

        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner, newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwner() external {
        if(_pendingOwner != msg.sender){
            revert Unauthorized();
        }
        address oldOwner = owner;
        owner = _pendingOwner;
        delete _pendingOwner;
        emit NewOwner(oldOwner, owner);
    }


    /// @notice Retrieves pending fees for a user from all managed positions.
    /// @dev Returns detailed fee information for `token0`, `token1`, and `bonusToken`.
    /// @param userAddress Address of the user to query.
    /// @return An array of `ReturnPendingFees` structs with detailed fee information.
    function getPendingFees(address userAddress) external view returns (ReturnPendingFees[] memory) {
        uint256 len = rangePositionManagers.length;
        ReturnPendingFees[] memory returnValues = new ReturnPendingFees[](len);

        // loop over the position Managers
        for(uint256 i; i < len; i++) {
            IRangePositionManager.UserInfo memory userElement = rangePositionManagers[i].rangePositionAddress.userMapping(userAddress);

            returnValues[i] = (ReturnPendingFees({
            positionManager: address(rangePositionManagers[i].rangePositionAddress),
            token0Balance: userElement.token0Balance,
            token1Balance: userElement.token1Balance,
            bonusTokenBalance: userElement.cakeTokenBalance,
            token0Lifetime : userElement.token0Lifetime,
            token1Lifetime : userElement.token1Lifetime
            }));
        }

        return returnValues;
    }

    /// @notice Retrieves user's liquidity information from all managed positions.
    /// @dev Returns liquidity amounts in `token0` and `token1` for each position.
    /// @param userAddress Address of the user to query.
    /// @return An array of `ReturnLiquidity` structs with liquidity information.
    function getUserLiquidity(address userAddress) external view returns (ReturnLiquidity[] memory) {
        uint256 len = rangePositionManagers.length;
        ReturnLiquidity[] memory returnValues = new ReturnLiquidity[](len);

        // loop over the position Managers
        for(uint256 i; i < len; i++) {
            // get manager and token id
            INonfungiblePositionManager positionManager = INonfungiblePositionManager(rangePositionManagers[i].rangePositionAddress.positionManager());
            uint256 tokenId = rangePositionManagers[i].rangePositionAddress.currentTokenId();
            IRangePositionManager.UserInfo memory userElement = rangePositionManagers[i].rangePositionAddress.userMapping(userAddress);

            // get ticks
            (,,,,,int24 tickLower,int24 tickUpper,,,,,) = positionManager.positions(tokenId);

            // get amounts
            (uint256 amount0, uint256 amount1) = rangePositionManagers[i].rangePositionAddress.getAmountsForTicks(tickLower, tickUpper, uint128(userElement.liquidity));

            // calculate
            returnValues[i] = (ReturnLiquidity({
            positionManager: address(rangePositionManagers[i].rangePositionAddress),
            token0Balance: amount0,
            token1Balance: amount1
            }));
        }

        return returnValues;
    }

    /// function for getting the liquidity amounts from the contracts
    /// @dev for getting liquidity
    /// @param liquidity the liquidity to simulate
    function getLiquidity(uint128 liquidity) external view returns (ReturnLiquidity[] memory) {
        uint256 len = rangePositionManagers.length;
        ReturnLiquidity[] memory returnValues = new ReturnLiquidity[](len);

        // loop over the position Managers
        for(uint256 i; i < len; i++) {
            // get manager and token id
            INonfungiblePositionManager positionManager = INonfungiblePositionManager(rangePositionManagers[i].rangePositionAddress.positionManager());
            uint256 tokenId = rangePositionManagers[i].rangePositionAddress.currentTokenId();

            // get ticks
            (,,,,,int24 tickLower,int24 tickUpper,,,,,) = positionManager.positions(tokenId);

            // get amounts
            (uint256 amount0, uint256 amount1) = rangePositionManagers[i].rangePositionAddress.getAmountsForTicks(tickLower, tickUpper, liquidity);

            // calculate
            returnValues[i] = (ReturnLiquidity({
            positionManager: address(rangePositionManagers[i].rangePositionAddress),
            token0Balance: amount0,
            token1Balance: amount1
            }));
        }

        return returnValues;
    }

    /// function for getting the position and pool data
    /// @dev for getting the position and pool data
    /// @param userAddress the address of the user
    function getPositionAndPoolData(address userAddress) external view returns (CalculationValues[] memory) {

        uint256 len = rangePositionManagers.length;
        CalculationValues[] memory returnValues = new CalculationValues[](len);

        // loop over the position Managers
        for(uint256 i; i < len; i++) {
            // get manager and token id
            INonfungiblePositionManager positionManager = INonfungiblePositionManager(rangePositionManagers[i].rangePositionAddress.positionManager());
            uint256 tokenId = rangePositionManagers[i].rangePositionAddress.currentTokenId();
            IRangePositionManager.UserInfo memory userElement = rangePositionManagers[i].rangePositionAddress.userMapping(userAddress);

            // get ticks and fee
            (,,,,uint24 fee,int24 tickLower,int24 tickUpper,,,,,) = positionManager.positions(tokenId);

            // get rest
            IUniswapV3Factory uniswapV3Factory = IUniswapV3Factory(positionManager.factory());
            address uniswapV3Pool = uniswapV3Factory.getPool(token0, token1, fee);

            uint160 sqrtPriceX96;
            int24 currentTick;

            if (rangePositionManagers[i].posType == PositionType.UNISWAP) {
                (sqrtPriceX96,currentTick,,,,,) = IUniswapV3Pool(uniswapV3Pool).slot0();
            } else {
                (sqrtPriceX96,currentTick,,,,,) = IPancakeV3Pool(uniswapV3Pool).slot0();
            }

            // calculate
            returnValues[i] = (CalculationValues({
            positionManager: address(rangePositionManagers[i].rangePositionAddress),
            currentTokenId: tokenId,
            fee: fee,
            sqrtPriceX96: sqrtPriceX96,
            tick: currentTick,
            tickLower: tickLower,
            tickUpper: tickUpper,
            userLiquidity: userElement.liquidity,
            weight: rangePositionManagers[i].suggestedWeight
            }));
        }

        return returnValues;
    }

    /// function to check if minimum 1 contract is in range
    /// @dev for checking the in Range parameter
    function getInRange() external view returns (ReturnBool[] memory) {
        uint256 len = rangePositionManagers.length;
        ReturnBool[] memory returnValues = new ReturnBool[](len);

        // loop over the position Managers
        for(uint256 i; i < len; i++) {
            // get is in range
            bool isOutOfRange = rangePositionManagers[i].rangePositionAddress.canMoveRange();

            // out of range
            if (isOutOfRange) {
                returnValues[i] = (ReturnBool({
                positionManager: address(rangePositionManagers[i].rangePositionAddress),
                indicator: false
                }));
            } else {
                returnValues[i] = (ReturnBool({
                positionManager: address(rangePositionManagers[i].rangePositionAddress),
                indicator: true
                }));
            }
        }

        return returnValues;
    }

    /// function to check if user is eligible to deposit funds
    /// @dev for checking if user is eligible to deposit funds
    function getEligible(address userAddress) external view returns (bool) {
        bool isEligible;

        // loop over the position Managers
        uint256 rangeLength = rangePositionManagers.length;
        for(uint256 i; i < rangeLength; i++) {
            // get is in isEligible
            isEligible = rangePositionManagers[i].rangePositionAddress.showEligible(userAddress);

            // if one is in isEligible we return
            if (!isEligible) {
                return isEligible;
            }
        }

        return isEligible;
    }

    /// gets yield manager
    /// @dev gets the yield manager
    /// returns the yield manager
    function getYieldManager() external view returns (address) {
        return address(yieldManager);
    }

    // only owner view
    function _onlyOwner() private view {
        if(msg.sender != owner){
            revert Unauthorized();
        }
    }
}
