// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
// import {IFactoryRegistry, IPoolFactory, IPool} from "./interfaces/AerodromeInterfaces.sol"; // Removed unused import
import {IERC20, IWETH, IVault, IRewardRouterV2, IRewardTracker, IwALP, IShareHelper, IVaultUtils} from "./Interfaces.sol";

/**
 * @title wALP Router
 * @notice This contract simplifies zapping in and out of wALP.
 */

contract wALPRouter is Ownable2Step {
    IWETH public constant weth =
        IWETH(0x039e2fB66102314Ce7b64Ce5Ce3E5183bc94aD38); // From deploy-sonic.json
    uint256 internal immutable PRICE_PRECISION;
    uint256 internal immutable BASIS_POINTS_DIVISOR;

    /// @notice The tokens currently approved for deposit to ALP.
    address[] public alpTokens;

    // contracts used for wALP mint/burn
    IwALP public wALP;

    IERC20 internal constant ALP =
        IERC20(0x6fbaeE8bEf2e8f5c34A08BdD4A4AB777Bd3f6764); // ALP token from deploy-sonic.json

    // The staked ALP tracker (fsALP) - this is what actually gets deposited into wALP
    IERC20 internal constant stakedAlpTracker =
        IERC20(0xB895e3DBFB37A4Cc6b4FB50B1cf903608e942FF9); // StakedAlpTracker from deploy-sonic.json

    IRewardRouterV2 internal constant rewardRouter =
        IRewardRouterV2(0xE72A2d5B3b09c88D4E8Cc60e74BD438d7168e80F); // RewardRouterV2 from deploy-sonic.json

    IVault internal constant ampedVault =
        IVault(0x5B8caae7cC6Ea61fb96Fd251C4Bc13e48749C7Da); // Vault from deploy-sonic.json

    IRewardRouterV2 internal constant alpManager =
        IRewardRouterV2(0x4DE729B85dDB172F1bb775882f355bA25764E430); // GlpManager from deploy-sonic.json

    IVaultUtils internal constant vaultUtils =
        IVaultUtils(0xf669bA7d9a4393B509B1209Dcdc5ab44cD62b4A8); // VaultUtils from deploy-sonic.json

    // Will need to be updated with the actual shared helper address
    IShareHelper public shareValueHelper;

    constructor() {
        PRICE_PRECISION = ampedVault.PRICE_PRECISION();
        BASIS_POINTS_DIVISOR = ampedVault.BASIS_POINTS_DIVISOR();
        
        // NOTE: approvals and token updates moved to setWAlpAddress
    }

    /**
     * @notice Sets the address of the wALP token contract. Can only be called once by the owner.
     * @param _wAlpAddress The address of the deployed IwALP compliant contract.
     */
    function setWAlpAddress(address _wAlpAddress) external onlyOwner {
        require(address(wALP) == address(0), "Router: wALP address already set");
        require(_wAlpAddress != address(0), "Router: Invalid wALP address");
        
        wALP = IwALP(_wAlpAddress);
        
        // do approvals for wALP - approve the staked ALP token, not regular ALP
        stakedAlpTracker.approve(address(wALP), type(uint256).max);
        
        // update our allowances
        updateAlpDepositTokenCacheAndAllowances();
    }
    
    /**
     * @notice Sets the address of the ShareValueHelper contract.
     * @param _shareHelperAddress The address of the deployed IShareHelper compliant contract.
     */
    function setShareHelperAddress(address _shareHelperAddress) external onlyOwner {
        require(_shareHelperAddress != address(0), "Router: Invalid shareHelper address");
        shareValueHelper = IShareHelper(_shareHelperAddress);
    }
    
    /**
     * @notice Updates the cached list of allowed ALP deposit tokens based on the Vault's whitelist
     *         and approves them for the RewardRouter to use when depositing to ALP.
     */
    function updateAlpDepositTokenCacheAndAllowances() public onlyOwner {
       _updateAlpDepositTokensAndAllowances();
    }

    function _updateAlpDepositTokensAndAllowances() internal {
        // first, set all of our allowances to zero
        for (uint256 i = 0; i < alpTokens.length; ++i) {
            IERC20 token = IERC20(alpTokens[i]);
            token.approve(address(alpManager), 0);
        }

        // clear out our saved array
        delete alpTokens;

        // add our new tokens
        uint256 tokensCount = ampedVault.whitelistedTokenCount();
        for (uint256 i = 0; i < tokensCount; ++i) {
            IERC20 token = IERC20(ampedVault.allWhitelistedTokens(i));
            token.approve(address(alpManager), type(uint256).max);
            alpTokens.push(address(token));
        }
    }

    // only accept ETH via fallback from the WETH contract
    receive() external payable {
        assert(msg.sender == address(weth));
    }

    /* ========== NEW/MODIFIED FUNCTIONS ========== */

    /**
     * @notice Checks for current tokens in ALP, approves them, and updates our stored array.
     * @dev This is may only be called by owner.
     * @dev This function is kept for backward compatibility. Use updateAlpDepositTokenCacheAndAllowances instead.
     */
    function updateAllowances() public onlyOwner {
        _updateAlpDepositTokensAndAllowances();
    }

    /**
     * @notice Check how much wALP we get from a given amount of underlying.
     * @dev Since this uses minPrice, we likely underestimate wALP received. By using normal solidity division, we are
     *  also truncating (rounding down) all operations.
     * @param _token The token to deposit to wALP.
     * @param _amount The amount of the token to deposit.
     * @return wrappedALPMintAmount Amount of wALP received.
     */
    function getMintAmountWrappedALP(
        address _token,
        uint256 _amount
    ) public view returns (uint256 wrappedALPMintAmount) {
        require(_amount > 0, "invalid _amount");
        require(address(wALP) != address(0), "Router: wALP not set");
        require(address(shareValueHelper) != address(0), "Router: shareValueHelper not set");

        // calculate aum before buyUSDG
        (uint256 aumInUsdg, uint256 alpSupply) = _getAlpInfo(true);
        uint256 price = ampedVault.getMinPrice(_token);

        // save some gas
        uint256 _precision = PRICE_PRECISION;
        uint256 _divisor = BASIS_POINTS_DIVISOR;

        uint256 usdgAmount = (_amount * price) / _precision;
        usdgAmount = ampedVault.adjustForDecimals(
            usdgAmount,
            _token,
            ampedVault.usdg()
        );

        uint256 feeBasisPoints = vaultUtils.getBuyUsdgFeeBasisPoints(
            _token,
            usdgAmount
        );
        uint256 afterFeeAmount = (_amount * (_divisor - feeBasisPoints)) /
            _divisor;

        uint256 usdgMintAmount = (afterFeeAmount * price) / _precision;
        usdgMintAmount = ampedVault.adjustForDecimals(
            usdgMintAmount,
            _token,
            ampedVault.usdg()
        );
        uint256 ALPMintAmount = aumInUsdg == 0
            ? usdgMintAmount
            : (usdgMintAmount * alpSupply) / aumInUsdg;

        // convert our ALP amount to wALP
        wrappedALPMintAmount = shareValueHelper.amountToShares(
            address(wALP),
            ALPMintAmount,
            false
        );
    }

    /**
     * @notice Check how much underlying we get from redeeming a given amount of wALP.
     * @dev By default we round down and use getMaxPrice to underestimate underlying received. This is important so that
     *  we don't ever revert in a swap due to overestimation, as getAmountsOut calls this function.
     * @param _tokenOut The token to withdraw from wALP.
     * @param _amount The amount of wALP to burn.
     * @param _roundUp Whether we round up or not.
     * @return underlyingReceived Amount of underlying token received.
     */
    function getRedeemAmountWrappedALP(
        address _tokenOut,
        uint256 _amount,
        bool _roundUp
    ) public view returns (uint256 underlyingReceived) {
        require(_amount > 0, "invalid _amount");
        require(address(wALP) != address(0), "Router: wALP not set");
        require(address(shareValueHelper) != address(0), "Router: shareValueHelper not set");

        // convert our wALP amount to ALP
        _amount = shareValueHelper.sharesToAmount(
            address(wALP),
            _amount,
            _roundUp
        );

        // convert our ALP to bUSD (USDG)
        (uint256 aumInUsdg, uint256 alpSupply) = _getAlpInfo(false);
        uint256 usdgAmount;

        // round up if needed
        if (_roundUp) {
            usdgAmount = Math.ceilDiv((_amount * aumInUsdg), alpSupply);
        } else {
            usdgAmount = (_amount * aumInUsdg) / alpSupply;
        }

        // use min or max price depending on how we want to estimate
        uint256 price;
        if (_roundUp) {
            price = ampedVault.getMinPrice(_tokenOut);
        } else {
            price = ampedVault.getMaxPrice(_tokenOut);
        }

        // convert USDG to _tokenOut amounts. no need to round this one since we adjust decimals and compensate below
        uint256 redeemAmount = (usdgAmount * PRICE_PRECISION) / price;

        redeemAmount = ampedVault.adjustForDecimals(
            redeemAmount,
            ampedVault.usdg(),
            _tokenOut
        );

        // add one wei to compensate for truncating when adjusting decimals
        if (_roundUp) {
            redeemAmount += 1;
        }

        // calculate our fees
        uint256 feeBasisPoints = vaultUtils.getSellUsdgFeeBasisPoints(
            _tokenOut,
            usdgAmount
        );

        // save some gas
        uint256 _divisor = BASIS_POINTS_DIVISOR;

        // adjust for fees, round up if needed
        if (_roundUp) {
            underlyingReceived = Math.ceilDiv(
                (redeemAmount * (_divisor - feeBasisPoints)),
                _divisor
            );
        } else {
            underlyingReceived = ((redeemAmount * (_divisor - feeBasisPoints)) /
                _divisor);
        }
    }

    /**
     * @notice Check how much wALP we need to redeem for a given amount of underlying.
     * @dev Here we do everything we can, including adding an additional Wei of Defeat, to ensure that our estimated
     *  wALP amount always provides enough underlying.
     * @param _underlyingToken The token to withdraw from wALP.
     * @param _amount The amount of underlying we need.
     * @return wALPAmount Amount of wALP needed.
     */
    function quoteRedeemAmountALP(
        address _underlyingToken,
        uint256 _amount
    ) external view returns (uint256 wALPAmount) {
        require(_amount > 0, "invalid _amount");
        require(address(wALP) != address(0), "Router: wALP not set");
        require(address(shareValueHelper) != address(0), "Router: shareValueHelper not set");

        // add an additional wei to our input amount because of persistent rounding issues, AKA the Wei of Defeat
        _amount += 1;

        // get our info for ALP
        (uint256 aumInUsdg, uint256 alpSupply) = _getAlpInfo(false);

        // convert our underlying amount to USDG
        uint256 underlyingPrice = ampedVault.getMaxPrice(_underlyingToken);
        uint256 usdgNeeded = Math.ceilDiv(
            (_amount * underlyingPrice),
            PRICE_PRECISION
        );

        // convert USDG needed to ALP. no need for rounding here since we will truncate in the next step anyway
        uint256 alpAmount = (usdgNeeded * alpSupply) / aumInUsdg;

        alpAmount = ampedVault.adjustForDecimals(
            alpAmount,
            ampedVault.usdg(),
            _underlyingToken
        );

        // add one wei since adjustForDecimals truncates instead of rounding up
        alpAmount += 1;

        // save some gas
        uint256 _divisor = BASIS_POINTS_DIVISOR;

        // check current fees
        uint256 feeBasisPoints = vaultUtils.getSellUsdgFeeBasisPoints(
            _underlyingToken,
            usdgNeeded
        );

        // adjust for fees
        alpAmount = Math.ceilDiv(
            (alpAmount * _divisor),
            (_divisor - feeBasisPoints)
        );

        // convert our ALP to wALP
        wALPAmount = shareValueHelper.amountToShares(
            address(wALP),
            alpAmount,
            true
        );
    }

    /**
     * @notice Check how much underlying we need to mint a given amount of wALP.
     * @dev Since this uses minPrice, we likely overestimate underlying needed. To be cautious of rounding down, use
     *  ceiling division.
     * @param _underlyingToken The token to deposit to wALP.
     * @param _amount The amount of wALP we need.
     * @return startingTokenAmount Amount of underlying token needed.
     */
    function quoteMintAmountALP(
        address _underlyingToken,
        uint256 _amount
    ) public view returns (uint256 startingTokenAmount) {
        require(_amount > 0, "invalid _amount");
        require(address(wALP) != address(0), "Router: wALP not set");
        require(address(shareValueHelper) != address(0), "Router: shareValueHelper not set");

        // convert our wALP amount to ALP
        _amount = shareValueHelper.sharesToAmount(address(wALP), _amount, true);

        // convert our ALP to bUSD (USDG)
        // maximize here to use max ALP price, to make sure we get enough ALP out
        (uint256 aumInUsdg, uint256 alpSupply) = _getAlpInfo(true);
        uint256 usdgAmount = Math.ceilDiv((_amount * aumInUsdg), alpSupply);

        // price is returned in 1e30 from vault
        uint256 tokenPrice = ampedVault.getMinPrice(_underlyingToken);

        startingTokenAmount = Math.ceilDiv(
            usdgAmount * PRICE_PRECISION,
            tokenPrice
        );

        startingTokenAmount = ampedVault.adjustForDecimals(
            startingTokenAmount,
            ampedVault.usdg(),
            _underlyingToken
        );

        // add one wei since adjustForDecimals truncates instead of rounding up
        startingTokenAmount += 1;

        // calculate extra needed due to fees
        uint256 feeBasisPoints = vaultUtils.getBuyUsdgFeeBasisPoints(
            _underlyingToken,
            usdgAmount
        );

        // save some gas
        uint256 _divisor = BASIS_POINTS_DIVISOR;

        startingTokenAmount = Math.ceilDiv(
            startingTokenAmount * _divisor,
            (_divisor - feeBasisPoints)
        );
    }

    // standard data needed to calculate ALP pricing
    function _getAlpInfo(
        bool _maximize
    ) internal view returns (uint256 aumInUsdg, uint256 alpSupply) {
        alpSupply = ALP.totalSupply();
        aumInUsdg = ampedVault.getAumInUsdg(_maximize);
    }

    // check if a token is in ALP
    function _isALPToken(address _tokenToCheck) internal view returns (bool) {
        for (uint256 i = 0; i < alpTokens.length; ++i) {
            if (alpTokens[i] == _tokenToCheck) {
                return true;
            }
        }
        return false;
    }

    /**
     * @notice Withdraws a specified amount of wALP to a target underlying token.
     * @dev Requires the caller (msg.sender) to have approved this router to spend their wALP.
     * @param _receiver The address to receive underlying tokens to.
     * @param _targetToken The address of the target token to which the wALP is withdrawn.
     * @param _amount The amount of wALP shares to withdraw.
     * @param _minTokenOut Minimum amount of target tokens expected (slippage control).
     * @return amountWithdrawn The amount of target tokens received from the withdrawal.
     */
    function withdrawFromWrappedALP(
        address _receiver,
        address _targetToken,
        uint256 _amount,
        uint256 _minTokenOut
    ) external returns (uint256 amountWithdrawn) {
        require(address(wALP) != address(0), "Router: wALP not set");
        
        // Transfer wALP from user to router
        _safeTransferFrom(address(wALP), msg.sender, address(this), _amount);

        if (!_isALPToken(_targetToken)) {
            revert("Token not in wALP");
        }

        // 1. Withdraw from wALP (this gives us staked ALP/fsALP)
        uint256 stakedAlpAmount = wALP.withdraw(_amount, address(this), 1);
        
        // 2. Unstake ALP and redeem to target token
        amountWithdrawn = rewardRouter.unstakeAndRedeemGlp(
            _targetToken,       // token to receive
            stakedAlpAmount,    // amount of ALP to unstake and redeem
            _minTokenOut,       // min amount to receive
            _receiver           // receiver address
        );
        
        return amountWithdrawn;
    }

    /**
     * @notice Deposits a specified amount of an underlying token to wALP.
     * @dev Requires the caller (msg.sender) to have approved this router to spend their _fromToken.
     * @param _receiver The address to receive wALP shares.
     * @param _fromToken The address of the token to be deposited.
     * @param _amount The amount of the token to deposit.
     * @param _minAlp Minimum amount of ALP expected from the deposit (slippage control).
     * @return amountReceived The amount of wALP shares received from the deposit.
     */
    function depositToWrappedALP(
        address _receiver,
        address _fromToken,
        uint256 _amount,
        uint256 _minAlp
    ) external returns (uint256 amountReceived) {
        require(address(wALP) != address(0), "Router: wALP not set");
        
        // Transfer the token from user to this contract
        _safeTransferFrom(_fromToken, msg.sender, address(this), _amount);

        if (!_isALPToken(_fromToken)) {
            revert("Token not in wALP");
        }
        
        // 1. Mint and stake ALP using the fromToken
        uint256 stakedAlpAmount = rewardRouter.mintAndStakeGlp(
            _fromToken,     // token to use for minting
            _amount,        // amount of token to use
            0,              // min USDG to receive (0 for simplicity, could be calculated)
            _minAlp         // min ALP to receive
        );
        
        // 2. Deposit the staked ALP (fsALP) into wALP to get receipt tokens
        // We need to make sure we're calling the correct deposit function from the ABI
        amountReceived = wALP.deposit(stakedAlpAmount, _receiver);
        
        return amountReceived;
    }

    /* ========== UNMODIFIED FUNCTIONS ========== */

    function _safeTransferFrom(
        address _token,
        address _from,
        address _to,
        uint256 _value
    ) internal {
        require(_token.code.length > 0);
        (bool success, bytes memory data) = _token.call(
            abi.encodeWithSelector(
                IERC20.transferFrom.selector,
                _from,
                _to,
                _value
            )
        );
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }
}