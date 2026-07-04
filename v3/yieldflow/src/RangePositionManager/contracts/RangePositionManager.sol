// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { IERC721Receiver } from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import { IPancakeV3Pool } from "./interfaces/IPancakeV3Pool.sol";
import { IUniswapV3Pool } from "./interfaces/IUniswapV3Pool.sol";
import { IWETH9 } from "./interfaces/IWETH9.sol";
import { IUniswapV3Factory } from "./interfaces/IUniswapV3Factory.sol";
import { IYieldManager } from "./interfaces/IYieldManager.sol";
import { IFeeDistributor } from "./interfaces/IFeeDistributor.sol";
import { IRangeMaster } from "./interfaces/IRangeMaster.sol";
import { IMasterChefV3 } from "./interfaces/IMasterChefV3.sol";
import { TickMath } from "./libraries/TickMath.sol";
import { LiquidityAmounts } from "./libraries/LiquidityAmounts.sol";
import { ISwapManager } from "./interfaces/ISwapManager.sol";
import { IRewardNFT } from "./interfaces/IRewardNFT.sol";
import { INonfungiblePositionManager, IERC721, IERC721Enumerable } from "./interfaces/INonfungiblePositionManager.sol";

/// @title RangePositionManager Contract
/// @notice Manages liquidity provision and fee collection across multiple DEXs
/// @dev This contract interacts with one pool of a V3 protocol and accepts user liquidity in order to earn trading fees.
/// @dev This contract is designed to work only with native ETH, users with WETH should unwrap prior to interact with the contract
/// @dev This contract is designed to work with non deflationary tokens and tokens without taxation
/// @dev This contract is designed to work only with corresponding position NFTs - dont send position NFTs directly, use provided methods
contract RangePositionManager is ReentrancyGuard, IERC721Receiver {
    using SafeERC20 for IERC20;
    using Address for address payable;

    // structs
    struct UserInfo {
        uint256 liquidity;
        uint256 token0Balance;
        uint256 token1Balance;
        uint256 cakeTokenBalance;
        uint256 token0Lifetime;
        uint256 token1Lifetime;
    }

    // struct for handling the variables in moveRange
    struct MoveRangeParams {
        address tokenIn;
        address tokenOut;
        uint256 amount0;
        uint256 amount1;
        uint256 amountIn;
        uint256 returnFromSwap;
    }

    uint256 public currentTokenId;
    uint256 internal immutable _productLock;
    uint128 public totalLiquidity;
    address[] public userList;
    address public owner;
    // indicates if the mint and increase liquidity is locked
    bool public isLocked;
    INonfungiblePositionManager public positionManager;

    mapping(address => UserInfo) public userMapping;

    address internal immutable _WETH;
    address internal _token0;
    address internal _token1;
    uint24 internal immutable _fee;
    int24 internal _currentTickLower;
    int24 internal _currentTickUpper;

    bool internal _contractInitiated;

    // indicates if moveRange check is on
    bool internal _checkMoveRangeDisabled;

    address internal _pendingOwner;
    address internal _feeReceiver;
    address internal _pendingFeeReceiver;
    address internal immutable _uniswapV3Pool;
    address internal immutable _cakeToken;
    IUniswapV3Factory internal _uniswapV3Factory;
    ISwapManager internal _swapManager;
    IFeeDistributor internal _feeDistributor;
    IMasterChefV3 internal _masterChef;

    address internal _rangeMaster;
    uint256 constant internal MAX_USERS = 50;
    uint256 internal immutable _distributionFee;
    uint256 internal _distributionRemainders0;
    uint256 internal _distributionRemainders1;

    mapping(address => bool) internal _isUser;
    mapping(address => bool) internal _operatorAddresses;

    // events
    event Mint(uint256 amount0, uint256 amount1, uint256 liquidity, uint256 tokenId, address indexed user);
    event IncreaseLiquidity(uint256 amount0, uint256 amount1, uint256 liquidity, address indexed user);
    event RemovedLiquidity(uint256 amount0, uint256 amount1, uint256 liquidity, address indexed user);
    event FeesWithdrawn(uint256 amount0, uint256 amount1, address indexed user);
    event NewOwner(address indexed oldOwner, address indexed owner);
    event Locked(bool oldLocked, bool locked);
    event MovedRange(int24 tickLower, int24 tickUpper);
    event CheckMoveRangeDisabled(bool oldCheckdisabled, bool checkDisabled);
    event OperatorAddressUpdated(address indexed operator, bool oldStatus, bool newStatus);
    event NewFeeReceiver(address indexed oldFeeReceiver, address indexed newFeeReceiver);
    event NewRangeMaster(address indexed oldRangeMaster, address indexed newRangeMaster);
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    event FeeReceiverTransferStarted(address indexed previousFeeReceiver, address indexed newFeeReceiver);
    event NewFeeDistributor(address indexed oldFeeDistributor, address indexed feeDistributor);
    event NewSwapManager(address indexed oldSwapManager, address indexed swapManager);
    event MasterDisabled();

    error UnauthorizedOwner();
    error UnauthorizedRangeMaster();
    error ZeroAddressFeeDistributor();
    error ZeroAddressTokens();
    error ZeroAddressPositionManager();
    error ZeroAddressSwapManager();
    error ZeroAddress();
    error DistributionFeeTooBig();
    error NoPoolFound();
    error NoValidSenderPositionNFT();
    error OnlyOneOwnerMint();
    error ValueMismatch();
    error UnauthorizedOperator();
    error MoveRangeNotAllowed();
    error AmountIs0();
    error Token0NotSufficient();
    error Token1NotSufficient();
    error MaxUsersReached();
    error NotEligibleToEnter();
    error UnauthorizedFeeReceiver();
    error NotEnoughLiquidity();
    error ProductLocked();
    error MismatchNativeETHToken();


    // only owner modifier
    modifier onlyOwner {
        _onlyOwner();
        _;
    }

    // only rangeMaster modifier
    modifier onlyRangeMaster {
        _onlyRangeMaster();
        _;
    }

    constructor(
        address positionManager_,
        address token0_,
        address token1_,
        uint24 fee_,
        uint256 productLock_,
        address feeDistributor_,
        uint256 distributionFee_,
        address masterChef_,
        address cakeAddress_,
        address swapManager_
    ){
        if(feeDistributor_ == address(0)){
            revert ZeroAddressFeeDistributor();
        }
        if(token1_ == address(0) || token0_ == address(0)){
            revert ZeroAddressTokens();
        }
        if(positionManager_ == address(0)){
            revert ZeroAddressPositionManager();
        }
        if(swapManager_ == address(0)){
            revert ZeroAddressSwapManager();
        }
        if(distributionFee_ >= 10000){
            revert DistributionFeeTooBig();
        }

        owner = msg.sender;
        _feeReceiver = msg.sender;
        _token0 = token0_;
        _token1 = token1_;
        _fee = fee_;

        positionManager = INonfungiblePositionManager(positionManager_);
        _uniswapV3Factory = IUniswapV3Factory(positionManager.factory());
        _uniswapV3Pool = _uniswapV3Factory.getPool(_token0, _token1, _fee);

        if(_uniswapV3Pool == address(0)){
            revert NoPoolFound();
        }

        _WETH = positionManager.WETH9();
        _productLock = productLock_;
        _feeDistributor = IFeeDistributor(feeDistributor_);
        _distributionFee = distributionFee_;

        _masterChef = IMasterChefV3(masterChef_);
        _cakeToken = cakeAddress_;

        _swapManager = ISwapManager(swapManager_);
    }

    // default fallback and receive functions
    fallback() external payable {}
    receive() external payable {}

    /// Function for the first mint of the initial position nft
    /// @dev mints the first initial position NFT, can only be called by the owner
    /// @dev this contract accepts native ETH and converts it to WETH
    /// @dev WETH deposits are not allowed (only ETH)
    /// @param tickLower the lower tick
    /// @param tickUpper the upper tick
    /// @param amountDesired0 the amount of token0 desired
    /// @param amountDesired1 the amount of token1 desired
    /// @param amount0Min the min amount of token0 desired
    /// @param amount1Min the min amount of token1 desired
    function mintOwner(
        int24 tickLower,
        int24 tickUpper,
        uint256 amountDesired0,
        uint256 amountDesired1,
        uint256 amount0Min,
        uint256 amount1Min
    )
    external payable onlyOwner nonReentrant {
        if(_contractInitiated) {
            revert OnlyOneOwnerMint();
        }
        if (_token0 == _WETH) {
            if(amountDesired0 != msg.value){
                revert ValueMismatch();
            }
        }
        if (_token1 == _WETH) {
            if(amountDesired1 != msg.value){
                revert ValueMismatch();
            }
        }

        _contractInitiated = true;
        _mint(tickLower, tickUpper, amountDesired0, amountDesired1, amount0Min,amount1Min, false);
    }

    /// function for moving range
    /// @dev this function is used to move the liquidity ranges (lower tick, upper tick). If possible (within the threshold)
    /// @dev it is possible to call this function. It will decrease all liquidity from the position, swap tokens in a ratio given in the parameter
    /// @dev and then mint a new position using this tokens swapped. Users will get the share of the new liquidity pro rata
    /// @param tickLower the new lower tick
    /// @param tickUpper the new upper tick
    /// @param tokenToSwap the token to be swapped
    /// @param amountToSwap the amount to be swapped from the tokenForRatios
    /// @param amountOutMinimum the minimum output
    function moveRange
    (
        int24 tickLower,
        int24 tickUpper,
        address tokenToSwap,
        uint256 amountToSwap,
        uint256 amountDecrease0Min,
        uint256 amountDecrease1Min,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 amountOutMinimum,
        uint24 poolFee
    )
    external nonReentrant
    {
        if(!_operatorAddresses[msg.sender]){
            revert UnauthorizedOperator();
        }
        if(!canMoveRange()){
            revert MoveRangeNotAllowed();
        }
        if(tokenToSwap != _token0 && tokenToSwap != _token1){
            revert ValueMismatch();
        }
        if(amountToSwap == 0){
            revert AmountIs0();
        }

        // if rewards are active
        if (address(_masterChef) != address(0)) {
            //get back from masterChef
            _updateUserCakeBalance(_masterChef.withdraw(currentTokenId, address(this)));
        }

        // collect fees
        _collect(0,0);

        MoveRangeParams memory params;

        // decrease to 0
        (params.amount0, params.amount1) = _decreaseLiquidity(amountDecrease0Min, amountDecrease1Min, totalLiquidity, address(this), true);

        // burn the position
        positionManager.burn(currentTokenId);

        // get correct input params
        params.tokenIn = (tokenToSwap == _token0) ? _token0 : _token1; // Token to swap from (depends on the token we get from the input)
        params.tokenOut = (tokenToSwap == _token0) ? _token1 : _token0; // Token to receive (opposite of tokenIn)
        params.amountIn = (tokenToSwap == _token0) ? params.amount1 : params.amount0; // Amount to swap from (either amount0 or amount1)

        // The call to `exactInputSingle` executes the swap.
        // approvals
        IERC20(params.tokenIn).forceApprove(address(_swapManager), amountToSwap);

        // swap
        params.returnFromSwap = _swapManager.swap{value: params.tokenIn == _WETH ? amountToSwap : 0}(params.tokenIn, params.tokenOut, amountToSwap, poolFee, amountOutMinimum);

        uint256 token0check;
        uint256 token1check;

        if (tokenToSwap == _token0) {
            token0check = params.amount0 - amountToSwap;
            token1check = params.amount1 + params.returnFromSwap;
        } else {
            token0check = params.amount0 + params.returnFromSwap;
            token1check = params.amount1 - amountToSwap;
        }

        // mint new position
        _mint(
            tickLower,
            tickUpper,
            token0check,
            token1check,
            amount0Min,
            amount1Min,
            true
        );

        emit MovedRange(tickLower, tickUpper);
    }

    /// public function for increasing liquidity
    /// @dev for increasing liquidity, also sets the sponsor if new user
    /// @param amountDesired0 the desired amount to use of token0
    /// @param amountDesired1 the desired amount to use of token1
    /// @param amount0Min the minimum amount of token0
    /// @param amount1Min the minimum amount of token1
    /// @param userToIncrease the user to increase
    function increaseLiquidityUser(
        uint256 amountDesired0,
        uint256 amountDesired1,
        uint256 amount0Min,
        uint256 amount1Min,
        address userToIncrease
    )
    external payable nonReentrant onlyRangeMaster
    {
        if(_token0 == _WETH) {
            if(amountDesired0 != msg.value){
                revert ValueMismatch();
            }
        }
        if(_token1 == _WETH) {
            if(amountDesired1 != msg.value){
                revert ValueMismatch();
            }
        }

        // increase the liquidity of the user
        _increaseLiquidity(
            amountDesired0,
            amountDesired1,
            amount0Min,
            amount1Min,
            userToIncrease,
            false
        );
    }

    /// public function for increasing liquidity automatically
    /// @dev for increasing liquidity auto
    /// @param amountDesired0 the desired amount to use of token0
    /// @param amountDesired1 the desired amount to use of token1
    /// @param amount0Min the minimum amount of token0
    /// @param amount1Min the minimum amount of token1
    /// @param userToIncrease the address of the user to increase
    function increaseLiquidityAuto(
        uint256 amountDesired0,
        uint256 amountDesired1,
        uint256 amount0Min,
        uint256 amount1Min,
        address userToIncrease
    )
    external nonReentrant
    {
        if(!_operatorAddresses[msg.sender]){
            revert UnauthorizedOperator();
        }
        if(userToIncrease == address(0)){
            revert ZeroAddress();
        }

        // get user element
        UserInfo storage userElement = userMapping[userToIncrease];

        if(userElement.token0Balance < amountDesired0){
            revert Token0NotSufficient();
        }
        if(userElement.token1Balance < amountDesired1){
            revert Token1NotSufficient();
        }

        _increaseLiquidity(
            amountDesired0,
            amountDesired1,
            amount0Min,
            amount1Min,
            userToIncrease,
            true
        );
    }


    /// function for decreasing liquidity, for msg.sender
    /// @dev for decreasing liquidity, for msg.sender
    /// @param amount0Min the minimum amount to receive of token0
    /// @param amount1Min the minimum amount to receive of token1
    /// @param liquidity the amount of liquidity to be decreased
    /// @param userToDecrease the userToDecrease to decrease
    /// @param userToDecrease the userToDecrease to decrease
    function decreaseLiquidityUser(
        uint256 amount0Min,
        uint256 amount1Min,
        uint128 liquidity,
        address userToDecrease
    )
    external
    nonReentrant
    {
        // ability for user to directly call function
        if (msg.sender != owner && msg.sender != _rangeMaster) {
            userToDecrease = msg.sender;
        }

        //get user element
        UserInfo storage userElement = userMapping[userToDecrease];

        // check for liquidity
        if(liquidity > userElement.liquidity){
            revert NotEnoughLiquidity();
        }

        // if rewards are active
        if (address(_masterChef) != address(0)) {
            //get back from masterChef
            _updateUserCakeBalance(_masterChef.withdraw(currentTokenId, address(this)));
        }

        // perform decrease liquidity
        _decreaseLiquidity(amount0Min, amount1Min, liquidity, userToDecrease, false);

        // if rewards are active
        if (address(_masterChef) != address(0)) {
            //send to stake in masterChef
            IERC721(positionManager).safeTransferFrom(address(this), address(_masterChef), currentTokenId);
        }
    }

    /// function for handling the collect
    /// @dev collects from a public address, can be called by anyone - used to collect fees
    /// @return amount0 the amount how much token0 we got as fees
    /// @return amount1 the amount how much token1 we got as fees
    function publicCollect() external nonReentrant returns
    (
        uint256 amount0,
        uint256 amount1
    )
    {
        // if rewards are active
        if (address(_masterChef) != address(0)) {
            // redeem token
            _updateUserCakeBalance(_masterChef.withdraw(currentTokenId, address(this)));
        }

        (amount0, amount1) = _collect(0, 0);

        // if rewards are active
        if (address(_masterChef) != address(0)) {
            //send to stake in masterChef
            IERC721(positionManager).safeTransferFrom(address(this), address(_masterChef), currentTokenId);
        }
    }

    /// function to collect the accrued fees
    /// @dev used to collect the earned fees from the contract (as a user)
    function userCollect(
        address userToCollect
    )
    external nonReentrant
    {
        // ability for user to directly call function
        if (msg.sender != owner && msg.sender != _rangeMaster) {
            userToCollect = msg.sender;
        }

        // get user
        UserInfo storage userElement = userMapping[userToCollect];
        uint256 token0Balance = userElement.token0Balance;
        uint256 token1Balance = userElement.token1Balance;
        uint256 cakeBalance = userElement.cakeTokenBalance;

        // check if no owner
        if (userToCollect != owner) {
            // send tokens
            if (_token0 == _WETH && (token0Balance > 0)) {
                payable(userToCollect).sendValue(token0Balance);
            }
            if (_token1 == _WETH && (token1Balance > 0)) {
                payable(userToCollect).sendValue(token1Balance);
            }
            if (_token0 != _WETH && token0Balance > 0) {
                IERC20(_token0).safeTransfer(userToCollect, token0Balance);
            }
            if (_token1 != _WETH && token1Balance > 0) {
                IERC20(_token1).safeTransfer(userToCollect, token1Balance);
            }
            if (cakeBalance > 0) {
                IERC20(_cakeToken).safeTransfer(userToCollect, cakeBalance);
            }
        }
        // user is owner
        else {
            // send tokens
            uint256 distributorFees0 = token0Balance * _distributionFee / 10000;
            uint256 distributorFees1 = token1Balance * _distributionFee / 10000;
            uint256 distributorFeesCake = cakeBalance * _distributionFee / 10000;

            if (_token0 == _WETH && (token0Balance > 0)) {
                payable(_feeReceiver).sendValue(token0Balance - distributorFees0);
                payable(address(_feeDistributor)).sendValue(distributorFees0);
            }
            if (_token1 == _WETH && (token1Balance > 0)) {
                payable(_feeReceiver).sendValue(token1Balance - distributorFees1);
                payable(address(_feeDistributor)).sendValue(distributorFees1);
            }
            if (_token0 != _WETH && token0Balance > 0) {
                IERC20(_token0).safeTransfer(_feeReceiver, token0Balance - distributorFees0);
                IERC20(_token0).forceApprove(address(_feeDistributor),distributorFees0);
                _feeDistributor.receiveERC20Fees(_token0, distributorFees0);
            }
            if (_token1 != _WETH && token1Balance > 0) {
                IERC20(_token1).safeTransfer(_feeReceiver, token1Balance - distributorFees1);
                IERC20(_token1).forceApprove(address(_feeDistributor),distributorFees1);
                _feeDistributor.receiveERC20Fees(_token1, distributorFees1);
            }
            if (cakeBalance > 0) {
                IERC20(_cakeToken).safeTransfer(_feeReceiver, cakeBalance - distributorFeesCake);
                IERC20(_cakeToken).forceApprove(address(_feeDistributor),distributorFeesCake);
                _feeDistributor.receiveERC20Fees(_cakeToken, distributorFeesCake);
            }
        }

        // set fees to 0 since withdrawn
        userElement.token0Balance = 0;
        userElement.token1Balance = 0;
        userElement.cakeTokenBalance = 0;

        emit FeesWithdrawn(token0Balance, token1Balance, userToCollect);
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
            revert UnauthorizedOwner();
        }
        address oldOwner = owner;
        owner = _pendingOwner;
        delete _pendingOwner;
        emit NewOwner(oldOwner, owner);
    }

    /**
     * @dev Starts the fee receiver transfer of the contract to a new account. Replaces the pending transfer if there is one.
 * Can only be called by the current owner.
 */
    function changeFeeReceiver(address newFeeReceiver) external {
        if(newFeeReceiver == address(0)){
            revert ZeroAddress();
        }
        if(msg.sender != _feeReceiver){
            revert UnauthorizedFeeReceiver();
        }

        _pendingFeeReceiver = newFeeReceiver;
        emit FeeReceiverTransferStarted(_feeReceiver, newFeeReceiver);
    }

    /**
    * @dev The new fee receiver accepts the fee receiver transfer.
 */
    function acceptFeeReceiver() external {
        if(_pendingFeeReceiver != msg.sender){
            revert UnauthorizedFeeReceiver();
        }

        address oldFeeReceiver = _feeReceiver;
        _feeReceiver = _pendingFeeReceiver;
        delete _pendingFeeReceiver;
        emit NewFeeReceiver(oldFeeReceiver, _feeReceiver);
    }

    /// sets the new range master contract
    /// @dev sets the range master
    /// @param _newRangeMaster the new value for _newRangeMaster
    function changeRangeMaster(address _newRangeMaster) external onlyOwner nonReentrant {
        if(_newRangeMaster == address(0)){
            revert ZeroAddressPositionManager();
        }
        address oldRangeMaster = _rangeMaster;
        _rangeMaster = _newRangeMaster;
        emit NewRangeMaster(oldRangeMaster, _newRangeMaster);
    }

    /// stops using masterChef
    /// @dev withdraws the position NFT to the contract and stops staking in masterChef
    function disableMasterChef() external onlyOwner nonReentrant {
        // get back the NFT and distribute rewards
        _updateUserCakeBalance(_masterChef.withdraw(currentTokenId, address(this)));

        // set masterChef to 0
        _masterChef = IMasterChefV3(address(0));

        emit MasterDisabled();
    }

    /// sets the locked value
    /// @dev sets the value of isLocked and controls minting and increasing liquidity
    /// @param _locked the new value for _locked
    function setLocked(bool _locked) external onlyOwner {
        bool oldLocked = isLocked;
        isLocked = _locked;
        emit Locked(oldLocked, _locked);
    }

    /// sets the checkMoveRangeDisabled value
    /// @dev sets the value of _checkMoveRangeDisabled and controls moving the range
    /// @param _checkMoveRange the new value for _checkMoveRange
    function setCheckMoveRangeDisabled(bool _checkMoveRange) external onlyOwner {
        bool oldCheckMoveRangeDisabled = _checkMoveRangeDisabled;
        _checkMoveRangeDisabled = _checkMoveRange;
        emit CheckMoveRangeDisabled(oldCheckMoveRangeDisabled, _checkMoveRange);
    }

    /// sets the operator addresses
    /// @dev sets the value of the addresses which can operate
    /// @param operatorAddress the address to be updated
    /// @param allowed the bool to set
    function setOperatorRangeAddress(address operatorAddress, bool allowed) external onlyOwner {
        if(operatorAddress == address(0)){
            revert ZeroAddress();
        }

        bool oldAllowed = _operatorAddresses[operatorAddress];
        _operatorAddresses[operatorAddress] = allowed;
        emit OperatorAddressUpdated(operatorAddress, oldAllowed, allowed);
    }

    /// sets the feeDistributor value
    /// @dev sets the value of feeDistributor
    /// @dev changes the fee distributor
    /// @param newFeeDistributor the new value for feeDistributor
    /// @param newSwapManager the new value for swapManager
    function setFeeDistributorSwapper(address newFeeDistributor, address newSwapManager) external onlyOwner {
        if(newFeeDistributor == address(0)){
            revert ZeroAddressFeeDistributor();
        }
        if(newSwapManager == address(0)){
            revert ZeroAddressSwapManager();
        }

        address oldFeeDistributor = address(_feeDistributor);
        address oldSwapManager = address(_swapManager);
        _feeDistributor = IFeeDistributor(newFeeDistributor);
        _swapManager = ISwapManager(newSwapManager);

        emit NewFeeDistributor(oldFeeDistributor, newFeeDistributor);
        emit NewSwapManager(oldSwapManager, newSwapManager);
    }


    /// @dev Withdraws excess tokens or native ETH from the contract.
    /// This function allows the contract owner to withdraw tokens or ETH that are in excess of the accounted balances
    /// for all users. This can include mistakenly sent tokens or residual balances. The function can handle both ERC20 tokens
    /// and native Ethereum (ETH) withdrawals based on the `isEthNative` flag. Tokens that are accounted to users cannot be withdrawn.
    /// @param _token The address of the token to withdraw.
    /// @param _to The recipient address of the withdrawn tokens or ETH.
    /// @param isEthNative A boolean flag indicating whether the withdrawal is for native ETH.
    function withdrawExcessTokens(address _token, address _to, bool isEthNative) external onlyOwner {
        if(_token == address(0)){
            revert ZeroAddress();
        }
        if(_to == address(0)){
            revert ZeroAddress();
        }
        if(isEthNative && _token != _WETH) {
            revert MismatchNativeETHToken();
        }

        uint256 contractBalance;
        uint256 accountedBalance;

        if (isEthNative) {
            // For native ETH, use the contract's balance
            contractBalance = address(this).balance;
        } else {
            // For ERC20 tokens, use the balanceOf function
            contractBalance = IERC20(_token).balanceOf(address(this));
        }

        // special case for handling WETH sent to the contract by accident
        if (_token == _WETH && !isEthNative) {
            IERC20(_token).safeTransfer(_to, contractBalance);
            return;
        }

        uint256 userLength = userList.length;
        for (uint256 i = 0; i < userLength; i++) {
            UserInfo storage user = userMapping[userList[i]];
            if (_token == _token0) {
                accountedBalance += user.token0Balance;
            } else if (_token == _token1) {
                accountedBalance += user.token1Balance;
            } else if (_token == _cakeToken) {
                accountedBalance += user.cakeTokenBalance;
            }
        }

        // Calculate the excess balance by subtracting accounted balances from the contract's balance
        uint256 excessBalance = contractBalance > accountedBalance ? contractBalance - accountedBalance : 0;

        // Withdraw the excess balance to the owner
        if (excessBalance > 0) {
            if (isEthNative) {
                payable(_to).sendValue(excessBalance);
            } else {
                IERC20(_token).safeTransfer(_to, excessBalance);
            }
        }
    }

    /// View function to get the amount for ticks onchain
    /// @dev checks for liquidity amount s on chain
    /// @param tickLower the lower tick
    /// @param tickUpper the upper tick
    /// @param liquidity the amount of liquidity
    /// returns the output amount for token0 and token1
    function getAmountsForTicks(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    ) external view returns (uint256 amount0, uint256 amount1) {
        uint160 sqrtPriceX96;

        if (_cakeToken == address(0)) {
            (sqrtPriceX96,,,,,,)  = IUniswapV3Pool(_uniswapV3Pool).slot0();
        } else {
            (sqrtPriceX96,,,,,,)  = IPancakeV3Pool(_uniswapV3Pool).slot0();
        }
        (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(sqrtPriceX96, TickMath.getSqrtRatioAtTick(tickLower), TickMath.getSqrtRatioAtTick(tickUpper), liquidity);
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external view override returns (bytes4) {
        if(msg.sender != address(positionManager)){
            revert NoValidSenderPositionNFT();
        }

        return this.onERC721Received.selector;
    }

    /// Checks if range can be moved
    /// @dev checks if the range position can be moved
    /// returns a bool indicating if position can be moved or not
    function canMoveRange() public view returns (bool) {
        // if check is disabled we can always move
        if (_checkMoveRangeDisabled) {
            return true;
        }

        // get the current tick
        int24 currentTick;
        if (_cakeToken == address(0)) {
            (,currentTick,,,,,) = IUniswapV3Pool(_uniswapV3Pool).slot0();
        } else {
            (,currentTick,,,,,) = IPancakeV3Pool(_uniswapV3Pool).slot0();
        }

        return currentTick > _currentTickUpper || currentTick < _currentTickLower;
    }

    /// function to check if holder is eligible
    /// @dev checking if an address has enough NFTs to use the product
    /// @param sender the sender address to check
    function showEligible(address sender) public view returns (bool) {
        return IERC721(_feeDistributor.getNftAddress()).balanceOf(sender) >= _productLock;
    }

    /// Internal mint function
    /// @dev mints position NFTs according to the params. Can be a first time mint from the owner, or moveRange mint
    /// @param tickLower the lower tick
    /// @param tickUpper the upper tick
    /// @param amountDesired0 the amount of token0 desired
    /// @param amountDesired1 the amount of token1 desired
    /// @param amount0Min the min amount of token0 desired
    /// @param amount1Min the min amount of token1 desired
    /// @param contractCall indicated if it is a moveRange call (coming from the contract itself)
    function _mint(
        int24 tickLower,
        int24 tickUpper,
        uint256 amountDesired0,
        uint256 amountDesired1,
        uint256 amount0Min,
        uint256 amount1Min,
        bool contractCall
    ) internal {

        // get mint decreaseParams
        INonfungiblePositionManager.MintParams memory mintParams = INonfungiblePositionManager.MintParams(
        {
        token0 : _token0,
        token1 : _token1,
        fee : _fee,
        tickLower : tickLower,
        tickUpper : tickUpper,
        amount0Desired : amountDesired0,
        amount1Desired : amountDesired1,
        amount0Min : amount0Min,
        amount1Min : amount1Min,
        recipient : address(this),
        deadline : block.timestamp
        }
        );

        // handle the approvals for ERC20 tokens
        if (mintParams.token0 != _WETH) {
            IERC20(mintParams.token0).forceApprove(address(positionManager), mintParams.amount0Desired);
        }

        if (mintParams.token1 != _WETH) {
            IERC20(mintParams.token1).forceApprove(address(positionManager), mintParams.amount1Desired);
        }

        // define output variables for later usage
        uint256 tokenId;
        uint256 amount0;
        uint256 amount1;
        uint128 liquidity;

        // call this if it is a reposition call
        if (contractCall) {

            (tokenId, liquidity, amount0, amount1) = positionManager.mint{value : _token0 == _WETH ? mintParams.amount0Desired : (_token1 == _WETH ? mintParams.amount1Desired : 0)}(mintParams);
            positionManager.refundETH();

            uint256 amount0Diff = amountDesired0 - amount0;
            uint256 amount1Diff = amountDesired1 - amount1;

            if(totalLiquidity == 0){
                revert AmountIs0();
            }
            if(liquidity == 0){
                revert AmountIs0();
            }

            // update user percentages
            uint256 userLength = userList.length;
            for (uint256 i = 0; i < userLength; i++) {
                UserInfo storage userElement = userMapping[userList[i]];
                userElement.liquidity = userElement.liquidity * liquidity / totalLiquidity;

                if (amount0Diff > 0) {
                    userElement.token0Balance += amount0Diff * userElement.liquidity / liquidity;
                }
                if (amount1Diff > 0) {
                    userElement.token1Balance += amount1Diff * userElement.liquidity / liquidity;
                }
            }
        }

        // sender is not the contract, first owner call
        else {
            (tokenId, liquidity, amount0, amount1) = positionManager.mint{value : msg.value}(mintParams);
            // housekeeping for first mint
            positionManager.refundETH();

            // sweep the remaining tokens
            positionManager.sweepToken(_token0, 0, address(this));
            positionManager.sweepToken(_token1, 0, address(this));

            // refunds
            if (_token0 == _WETH && (address(this).balance > 0)) {
                payable(msg.sender).sendValue(address(this).balance);
            }
            if (_token1 == _WETH && (address(this).balance > 0)) {
                payable(msg.sender).sendValue(address(this).balance);
            }
            if (_token0 != _WETH && IERC20(_token0).balanceOf(address(this)) > 0) {
                IERC20(_token0).safeTransfer(msg.sender, IERC20(_token0).balanceOf(address(this)));
            }
            if (_token1 != _WETH && IERC20(_token1).balanceOf(address(this)) > 0) {
                IERC20(_token1).safeTransfer(msg.sender, IERC20(_token1).balanceOf(address(this)));
            }

            //add owner init as user used for owner decrease after potential lock
            // update user mapping
            UserInfo storage userElement = userMapping[msg.sender];
            userElement.liquidity = liquidity;

            // push the unique item to the array
            userList.push(msg.sender);
            _isUser[msg.sender] = true;
        }

        // handle approvals
        IERC20(mintParams.token0).forceApprove(address(positionManager), 0);
        IERC20(mintParams.token1).forceApprove(address(positionManager), 0);

        totalLiquidity = liquidity;
        currentTokenId = tokenId;
        _currentTickUpper = tickUpper;
        _currentTickLower = tickLower;

        // if rewards are active
        if (address(_masterChef) != address(0)) {
            //send to stake in masterChef
            IERC721(positionManager).safeTransferFrom(address(this), address(_masterChef), currentTokenId);
        }

        emit Mint(amount0, amount1, liquidity, currentTokenId, msg.sender);
    }


    /// internal function for increasing liquidity
    /// @dev for increasing liquidity, also sets the sponsor if new user
    /// @param amountDesired0 the desired amount to use of token0
    /// @param amountDesired1 the desired amount to use of token1
    /// @param amount0Min the minimum amount of token0
    /// @param amount1Min the minimum amount of token1
    /// @param userToIncrease the user to be increased
    /// @param autoCall indicates if this call is from a bot account
    function _increaseLiquidity(
        uint256 amountDesired0,
        uint256 amountDesired1,
        uint256 amount0Min,
        uint256 amount1Min,
        address userToIncrease,
        bool autoCall
    )
    internal
    {
        // check if locked
        if(isLocked){
            revert ProductLocked();
        }
        if(!(_isUser[userToIncrease] || userList.length < MAX_USERS)){
            revert MaxUsersReached();
        }
        if(!showEligible(userToIncrease)){
            revert NotEligibleToEnter();
        }

        // if rewards are active
        if (address(_masterChef) != address(0)) {
            //get back from masterChef
            _updateUserCakeBalance(_masterChef.withdraw(currentTokenId, address(this)));
        }

        // get increase params
        INonfungiblePositionManager.IncreaseLiquidityParams memory increaseParams = INonfungiblePositionManager.IncreaseLiquidityParams({
        tokenId : currentTokenId,
        amount0Desired : amountDesired0,
        amount1Desired : amountDesired1,
        amount0Min : amount0Min,
        amount1Min : amount1Min,
        deadline : block.timestamp
        });

        // handle approvals
        if (_token0 != _WETH) {
            if (!autoCall) {
                IERC20(_token0).safeTransferFrom(msg.sender, address(this), amountDesired0);
            }

            IERC20(_token0).forceApprove(address(positionManager), amountDesired0);
        }

        if (_token1 != _WETH) {
            if (!autoCall) {
                IERC20(_token1).safeTransferFrom(msg.sender, address(this), amountDesired1);
            }

            IERC20(_token1).forceApprove(address(positionManager), amountDesired1);
        }

        uint256 ETHValue;
        // calculate the ETH value
        if (_token0 == _WETH) {
            ETHValue = amountDesired0;
        }
        if (_token1 == _WETH) {
            ETHValue = amountDesired1;
        }

        // increase call
        (uint128 liquidity, uint256 amount0, uint256 amount1) = positionManager.increaseLiquidity{value : ETHValue}(increaseParams);
        positionManager.refundETH();

        // update user mapping
        UserInfo storage userElement = userMapping[userToIncrease];
        userElement.liquidity += liquidity;

        // check against the mapping
        if (!_isUser[userToIncrease]) {
            // push the unique item to the array
            userList.push(userToIncrease);
            _isUser[userToIncrease] = true;

            IRewardNFT(_feeDistributor.getNftAddress()).setNFTsInUse(userToIncrease, _productLock);
        }

        // check if user or bot call
        if (!autoCall) {
            // send back tokens
            if (_token0 == _WETH && (ETHValue - amount0 > 0)) {
                payable(userToIncrease).sendValue(ETHValue - amount0);
            }
            if (_token1 == _WETH && (ETHValue - amount1 > 0)) {
                payable(userToIncrease).sendValue(ETHValue - amount1);
            }
            if (_token0 != _WETH && amountDesired0 - amount0 > 0) {
                IERC20(_token0).safeTransfer(userToIncrease, amountDesired0 - amount0);
            }
            if (_token1 != _WETH && amountDesired1 - amount1 > 0) {
                IERC20(_token1).safeTransfer(userToIncrease, amountDesired1 - amount1);
            }
        } else {
            userElement.token0Balance -= amount0;
            userElement.token1Balance -= amount1;
        }

        // if rewards are active
        if (address(_masterChef) != address(0)) {
            //send to stake in masterChef
            IERC721(positionManager).safeTransferFrom(address(this), address(_masterChef), currentTokenId);
        }

        // handle approvals
        IERC20(_token0).forceApprove(address(positionManager), 0);
        IERC20(_token1).forceApprove(address(positionManager), 0);

        totalLiquidity += liquidity;
        emit IncreaseLiquidity(amount0, amount1, liquidity, userToIncrease);
    }

    /// function for decreasing liquidity, internal, can be used for user decrease, forced decrease or internal new mint decrease
    /// @dev for decreasing liquidity, internal, can be used for user decrease, forced decrease or internal new mint decrease
    /// @param amount0Min the minimum amount to receive of token0
    /// @param amount1Min the minimum amount to receive of token1
    /// @param liquidity the amount of liquidity to be decreased
    /// @param userToDecrease the user address to be decreased
    /// @param contractCall indicated if call comes from inside the contract or user action
    /// @return amount0 the amount how much token0 we got as return
    /// @return amount1 the amount how much token1 we got as return
    function _decreaseLiquidity(
        uint256 amount0Min,
        uint256 amount1Min,
        uint128 liquidity,
        address userToDecrease,
        bool contractCall
    )
    internal
    returns
    (
        uint256 amount0,
        uint256 amount1
    )
    {
        // build decrease params
        INonfungiblePositionManager.DecreaseLiquidityParams memory decreaseParams = INonfungiblePositionManager.DecreaseLiquidityParams({
        tokenId : currentTokenId,
        liquidity : liquidity,
        amount0Min : amount0Min,
        amount1Min : amount1Min,
        deadline : block.timestamp
        });

        (amount0, amount1) = positionManager.decreaseLiquidity(decreaseParams);

        _collect(amount0, amount1);

        if (!contractCall) {
            //get user element
            UserInfo storage userElement = userMapping[userToDecrease];
            // housekeeping
            userElement.liquidity -= liquidity;

            // if no liquidity we remove user
            if (userElement.liquidity == 0) {
                uint256 userListLength = userList.length;
                for (uint256 i = 0; i < userListLength; i++) {
                    if (userList[i] == userToDecrease) {
                        // Move the last element into the place to delete
                        userList[i] = userList[userListLength - 1];
                        // Remove the last element
                        userList.pop();

                        IRewardNFT(_feeDistributor.getNftAddress()).setNFTsUnused(userToDecrease);
                        break;
                    }
                }
                _isUser[userToDecrease] = false;
            }

            totalLiquidity -= liquidity;

            IYieldManager yieldManager = IYieldManager(IRangeMaster(_rangeMaster).getYieldManager());

            // fees
            // get user stats
            (, , uint256 val3,) = yieldManager.getUserFactors(
                userToDecrease,
                0
            );

            uint256 mgmtFee0 = (val3 * amount0) / 10000;
            uint256 sponsorFee0;
            uint256 mgmtFee1 = (val3 * amount1) / 10000;
            uint256 sponsorFee1;

            // get sponsor
            address sponsor = yieldManager.getAffiliate(userToDecrease);
            // get sponsor stats
            if (sponsor != address(0)) {
                (, uint256 sval2,,) = yieldManager
                .getUserFactors(sponsor, 1);
                sponsorFee0 = (mgmtFee0 * sval2) / 10000;
                mgmtFee0 -= sponsorFee0;
                sponsorFee1 = (mgmtFee1 * sval2) / 10000;
                mgmtFee1 -= sponsorFee1;
            }
            // update user mapping
            UserInfo storage userElementOwner = userMapping[owner];

            // send back tokens
            if (_token0 == _WETH && (amount0 - mgmtFee0 - sponsorFee0 > 0)) {
                payable(userToDecrease).sendValue(amount0 - mgmtFee0 - sponsorFee0);
                userElementOwner.token0Balance += mgmtFee0;

                if (sponsor != address(0) && sponsorFee0 != 0) {
                    payable(sponsor).sendValue(sponsorFee0);
                }
            }
            if (_token1 == _WETH && (amount1 - mgmtFee1 - sponsorFee1 > 0)) {
                payable(userToDecrease).sendValue(amount1 - mgmtFee1 - sponsorFee1);
                userElementOwner.token1Balance += mgmtFee1;

                if (sponsor != address(0) && sponsorFee1 != 0) {
                    payable(sponsor).sendValue(sponsorFee1);
                }
            }
            if (_token0 != _WETH && amount0 - mgmtFee0 - sponsorFee0 > 0) {
                IERC20(_token0).safeTransfer(userToDecrease, amount0 - mgmtFee0 - sponsorFee0);
                userElementOwner.token0Balance += mgmtFee0;

                if (sponsor != address(0) && sponsorFee0 != 0) {
                    IERC20(_token0).safeTransfer(sponsor, sponsorFee0);
                }
            }
            if (_token1 != _WETH && amount1 - mgmtFee1 - sponsorFee1 > 0) {
                IERC20(_token1).safeTransfer(userToDecrease, amount1 - mgmtFee1 - sponsorFee1);
                userElementOwner.token1Balance += mgmtFee1;
                if (sponsor != address(0) && sponsorFee1 != 0) {
                    IERC20(_token1).safeTransfer(sponsor, sponsorFee1);
                }
            }
        }

        emit RemovedLiquidity(amount0, amount1, liquidity, userToDecrease);
    }
    /// function for handling the cake rewards
    /// @dev allocates cake token rewards
    /// @param amount the amount how much token we got
    function _updateUserCakeBalance(uint256 amount) internal {
        if(totalLiquidity == 0){
            revert AmountIs0();
        }

        if(amount == 0) {
            return;
        }

        // get owner
        UserInfo storage ownerUserElement = userMapping[owner];
        IYieldManager yieldManager = IYieldManager(IRangeMaster(_rangeMaster).getYieldManager());

        // check for every user and allocate fee rewards
        uint256 userLength = userList.length;
        for (uint256 i = 0; i < userLength; i++) {
            UserInfo storage userElement = userMapping[userList[i]];

            uint256 cakeTokenShare = amount * userElement.liquidity / totalLiquidity;

            (, uint256 val2,,) = yieldManager.getUserFactors(
                userList[i],
                0
            );

            uint256 perfFeeCake = (val2 * cakeTokenShare) / 10000;
            uint256 sPerfFeeCake;

            // sponsor lookup
            address sponsor = yieldManager.getAffiliate(userList[i]);

            // get sponsor stats
            if (sponsor != address(0)) {
                (uint256 sval1,,,) = yieldManager
                .getUserFactors(sponsor, 1);
                sPerfFeeCake = (perfFeeCake * sval1) / 10000;
                perfFeeCake -= sPerfFeeCake;

                // get sponsor
                UserInfo storage sponsorElement = userMapping[sponsor];
                sponsorElement.cakeTokenBalance += sPerfFeeCake;
            }

            // allocate performance fee
            ownerUserElement.cakeTokenBalance += perfFeeCake;
            userElement.cakeTokenBalance += cakeTokenShare - perfFeeCake - sPerfFeeCake;
        }
    }
    /// function for handling the collect from the position manager contract
    /// @dev collects the accrued fees from the position manager contract and withdraws them to this contract
    /// @param decrease0 the amount how much token0 are currently in the contract after a decrease
    /// @param decrease0 the amount how much token1 are currently in the contract after a decrease
    /// @return amount0 the amount how much token0 we got as fees
    /// @return amount1 the amount how much token1 we got as fees
    function _collect(uint256 decrease0, uint256 decrease1) internal returns
    (
        uint256 amount0,
        uint256 amount1
    )
    {
        // prepare collect params
        INonfungiblePositionManager.CollectParams memory collectParams = INonfungiblePositionManager.CollectParams(
        {
        tokenId : currentTokenId,
        recipient : address(this),
        amount0Max : type(uint128).max,
        amount1Max : type(uint128).max
        }
        );

        (amount0, amount1) = positionManager.collect(collectParams);

        // we need to account the tokens and then account fees
        amount0 = amount0 + _distributionRemainders0 - decrease0;
        amount1 = amount1 + _distributionRemainders1 - decrease1;

        positionManager.unwrapWETH9(0, address(this));

        // convert weth9
        IWETH9(_WETH).withdraw(IERC20(_WETH).balanceOf(address(this)));

        // sweep the remaining tokens
        positionManager.sweepToken(_token0, 0, address(this));
        positionManager.sweepToken(_token1, 0, address(this));

        // get owner
        UserInfo storage ownerUserElement = userMapping[owner];

        if(totalLiquidity == 0){
            revert AmountIs0();
        }

        // check for every user and allocate fee rewards
        IYieldManager yieldManager = IYieldManager(IRangeMaster(_rangeMaster).getYieldManager());

        uint256 totalDistributedAmount0 = 0;
        uint256 totalDistributedAmount1 = 0;

        uint256 userLength = userList.length;
        for (uint256 i = 0; i < userLength; i++) {
            UserInfo storage userElement = userMapping[userList[i]];

            uint256 share0 = amount0 * userElement.liquidity / totalLiquidity;
            uint256 share1 = amount1 * userElement.liquidity / totalLiquidity;

            (, uint256 val2,,) = yieldManager.getUserFactors(
                userList[i],
                0
            );

            uint256 perfFee0 = (val2 * share0) / 10000;
            uint256 sPerfFee0;

            uint256 perfFee1 = (val2 * share1) / 10000;
            uint256 sPerfFee1;

            // sponsor lookup
            address sponsor = yieldManager.getAffiliate(userList[i]);

            // get sponsor stats
            if (sponsor != address(0)) {
                (uint256 sval1,,,) = yieldManager
                .getUserFactors(sponsor, 1);
                sPerfFee0 = (perfFee0 * sval1) / 10000;
                perfFee0 -= sPerfFee0;
                sPerfFee1 = (perfFee1 * sval1) / 10000;
                perfFee1 -= sPerfFee1;

                // get sponsor
                UserInfo storage sponsorElement = userMapping[sponsor];
                sponsorElement.token0Balance += sPerfFee0;
                sponsorElement.token1Balance += sPerfFee1;
            }

            // allocate performance fee
            ownerUserElement.token0Balance += perfFee0;
            ownerUserElement.token1Balance += perfFee1;

            userElement.token0Balance += share0 - perfFee0 - sPerfFee0;
            userElement.token1Balance += share1 - perfFee1 - sPerfFee1;

            userElement.token0Lifetime += share0 - perfFee0 - sPerfFee0;
            userElement.token1Lifetime += share1 - perfFee1 - sPerfFee1;

            totalDistributedAmount0 += share0;
            totalDistributedAmount1 += share1;
        }

        // After all distributions, calculate the remainders
        _distributionRemainders0 = amount0 - totalDistributedAmount0;
        _distributionRemainders1 = amount1 - totalDistributedAmount1;
    }

    // only rangeMaster view
    function _onlyRangeMaster() private view {
        if(msg.sender != _rangeMaster){
            revert UnauthorizedRangeMaster();
        }
    }

    // only owner view
    function _onlyOwner() private view {
        if(msg.sender != owner){
            revert UnauthorizedOwner();
        }
    }
}
