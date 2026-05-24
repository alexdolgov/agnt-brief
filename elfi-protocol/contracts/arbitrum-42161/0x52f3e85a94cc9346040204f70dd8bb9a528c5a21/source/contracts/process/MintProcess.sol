// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "../interfaces/IStake.sol";
import "../interfaces/IVault.sol";
import "../vault/Vault.sol";
import "../vault/LpVault.sol";
import "../vault/StakeToken.sol";
import "./LpPoolQueryProcess.sol";
import "./FeeProcess.sol";
import "./FeeRewardsProcess.sol";
import "./AssetsProcess.sol";
import "./FeeQueryProcess.sol";
import "./MarketProcess.sol";

library MintProcess {
    using LpPool for LpPool.Props;
    using LpPoolQueryProcess for LpPool.Props;
    using UsdPool for UsdPool.Props;
    using LpPoolQueryProcess for UsdPool.Props;
    using StakingAccount for StakingAccount.Props;
    using Account for Account.Props;
    using AccountProcess for Account.Props;
    using CommonData for CommonData.Props;
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using SafeCast for uint256;
    using SafeCast for int256;

    bytes32 constant MINT_ID_KEY = keccak256("MINT_ID_KEY");

    struct ExecuteMintCache {
        address mintToken;
        uint256 mintFee;
        uint8 mintTokenDecimals;
        uint256 mintTokenAmount;
        uint256 mintStakeAmount;
    }

    /// @dev Emitted when a mint request is canceled
    /// @param requestId The ID of the mint request
    /// @param data The mint request data
    /// @param reasonCode The reason code for cancellation
    event CancelMintEvent(uint256 indexed requestId, Mint.Request data, bytes32 reasonCode);

    /// @dev Emitted when a mint request is successfully executed
    /// @param requestId The ID of the mint request
    /// @param mintStakeAmount The amount of stake tokens minted
    /// @param data The mint request data
    event MintSuccessEvent(uint256 indexed requestId, uint256 mintStakeAmount, Mint.Request data);

    /// @dev Emitted when a mint request is created
    /// @param requestId The ID of the mint request
    /// @param data The mint request data
    event CreateMintEvent(uint256 indexed requestId, Mint.Request data);

    /// @dev Creates a mint stake token first-phrase request
    /// @param params The parameters for minting LP stake tokens
    /// @param account The account requesting the mint
    /// @param token The token to be minted
    /// @param requestTokenAmount The amount of tokens requested
    /// @param isExecutionFeeFromLpVault Whether the execution fee is from the LP vault
    function createMintStakeTokenRequest(
        IStake.MintStakeTokenParams memory params,
        address account,
        address token,
        uint256 requestTokenAmount,
        bool isExecutionFeeFromLpVault
    ) external {
        uint256 requestId = UuidCreator.nextId(MINT_ID_KEY);

        Mint.Request storage mintRequest = Mint.create(requestId);
        mintRequest.account = account;
        mintRequest.stakeToken = params.stakeToken;
        mintRequest.requestToken = token;
        mintRequest.minStakeAmount = params.minStakeAmount;
        mintRequest.requestTokenAmount = requestTokenAmount;
        mintRequest.executionFee = params.executionFee;
        mintRequest.isCollateral = params.isCollateral;
        mintRequest.isFromAccount = params.isFromAccount;
        mintRequest.isMintMax = params.isMintMax;
        mintRequest.isExecutionFeeFromLpVault = isExecutionFeeFromLpVault;

        emit CreateMintEvent(requestId, mintRequest);
    }

    /// @dev Executes a mint stake token request
    /// @param requestId The ID of the mint request
    /// @param mintRequest Mint.Request
    /// @return stakeAmount The amount of stake tokens minted
    function executeMintStakeToken(
        uint256 requestId,
        Mint.Request memory mintRequest
    ) external returns (uint256 stakeAmount) {
        FeeRewardsProcess.updateAccountFeeRewards(mintRequest.account, mintRequest.stakeToken);
        bool isUsdPool = CommonData.getStakeUsdToken() == mintRequest.stakeToken;
        if (isUsdPool) {
            stakeAmount = _mintStakeUsd(requestId, mintRequest);
        } else if (CommonData.isStakeTokenSupport(mintRequest.stakeToken)) {
            stakeAmount = _mintStakeToken(requestId, mintRequest);
        } else {
            revert Errors.StakeTokenInvalid(mintRequest.stakeToken);
        }

        if (!mintRequest.isFromAccount) {
            IVault(address(this)).getLpVault().transferOut(
                mintRequest.requestToken,
                mintRequest.stakeToken,
                mintRequest.requestTokenAmount
            );
        }

        MarketProcess.updatePoolBorrowingFeeRate(mintRequest.stakeToken, !isUsdPool, mintRequest.requestToken);
        Mint.remove(requestId);
        emit MintSuccessEvent(requestId, stakeAmount, mintRequest);
    }

    /// @dev Cancels a mint stake token request
    /// @param requestId The ID of the mint request
    /// @param mintRequest The mint request data
    /// @param reasonCode The reason code for cancellation
    function cancelMintStakeToken(uint256 requestId, Mint.Request memory mintRequest, bytes32 reasonCode) external {
        if (!mintRequest.isFromAccount) {
            VaultProcess.transferOut(
                mintRequest.isCollateral
                    ? IVault(address(this)).getPortfolioVaultAddress()
                    : IVault(address(this)).getLpVaultAddress(),
                mintRequest.requestToken,
                mintRequest.account,
                mintRequest.requestTokenAmount
            );
        }
        if (mintRequest.isFromAccount && mintRequest.transferAmountFromAccount > 0) {
            _rollbackToAccount(requestId, mintRequest);
        }
        Mint.remove(requestId);
        emit CancelMintEvent(requestId, mintRequest, reasonCode);
    }

    /// @dev Validates and deposits the mint execution fee
    /// @param account The account requesting the mint
    /// @param params IStake.MintStakeTokenParams
    /// @return The remaining wallet request token amount and a boolean indicating if the fee is from the wallet
    function validateAndDepositMintExecutionFee(
        address account,
        IStake.MintStakeTokenParams calldata params
    ) external returns (uint256, bool) {
        AppConfig.ChainConfig memory chainConfig = AppConfig.getChainConfig();
        GasProcess.validateExecutionFeeLimit(params.executionFee, chainConfig.mintGasFeeLimit);
        if (params.isNativeToken && params.requestTokenAmount >= params.executionFee) {
            return (params.requestTokenAmount - params.executionFee, true);
        }
        require(msg.value == params.executionFee, "mint with execution fee error!");
        AssetsProcess.depositToVault(
            AssetsProcess.DepositParams(
                account,
                chainConfig.wrapperToken,
                params.executionFee,
                AssetsProcess.DepositFrom.MINT,
                true
            )
        );
        return (params.requestTokenAmount, true);
    }

    /// @dev Mint operations for the market pool(mint elfBTC, elfETH and so on)
    /// @param mintRequest Mint.Request
    /// @return stakeAmount The amount of stake tokens minted
    function _mintStakeToken(
        uint256 requestId,
        Mint.Request memory mintRequest
    ) internal returns (uint256 stakeAmount) {
        uint256 requestTokenAmount = mintRequest.requestTokenAmount;

        if (mintRequest.isFromAccount) {
            requestTokenAmount = _transferFromAccount(requestId, mintRequest);
            Mint.Request storage mintStorageRequest = Mint.load(requestId);
            mintStorageRequest.transferAmountFromAccount = requestTokenAmount;
        }

        StakingAccount.Props storage accountProps = StakingAccount.loadOrCreate(mintRequest.account);
        LpPool.Props storage pool = LpPool.load(mintRequest.stakeToken);
        pool.checkExists();
        AppPoolConfig.LpPoolConfig memory poolConfig = AppPoolConfig.getLpPoolConfig(mintRequest.stakeToken);
        ExecuteMintCache memory cache;
        cache.mintToken = mintRequest.requestToken;

        if (pool.baseToken != cache.mintToken) {
            revert Errors.MintTokenInvalid(mintRequest.stakeToken, mintRequest.requestToken);
        }

        cache.mintTokenDecimals = TokenUtils.decimals(cache.mintToken);
        uint256 minMintStakeAmount = AppPoolConfig.getStakeConfig().minPrecisionMultiple.mul(
            10 ** (cache.mintTokenDecimals - AppTradeTokenConfig.getTradeTokenConfig(cache.mintToken).precision)
        );

        if (mintRequest.requestTokenAmount < minMintStakeAmount) {
            revert Errors.MintStakeTokenTooSmall(minMintStakeAmount, mintRequest.requestTokenAmount);
        }

        cache.mintFee = FeeQueryProcess.calcMintOrRedeemFee(requestTokenAmount, poolConfig.mintFeeRate);
        FeeProcess.chargeMintOrRedeemFee(
            cache.mintFee,
            mintRequest.stakeToken,
            mintRequest.requestToken,
            mintRequest.account,
            FeeProcess.FEE_MINT,
            false
        );

        cache.mintTokenAmount = requestTokenAmount - cache.mintFee;
        cache.mintStakeAmount = _executeMintStakeToken(mintRequest, pool, cache.mintTokenAmount);
        accountProps.addStakeAmount(mintRequest.stakeToken, cache.mintStakeAmount);
        pool.addBaseToken(cache.mintTokenAmount);
        stakeAmount = cache.mintStakeAmount;
        return stakeAmount;
    }

    /// @dev Mint operations for the usd pool (mint elfUSD)
    /// @param mintRequest Mint.Request
    /// @return mintStakeAmount The amount of stake tokens minted
    function _mintStakeUsd(
        uint256 requestId,
        Mint.Request memory mintRequest
    ) internal returns (uint256 mintStakeAmount) {
        if (!UsdPool.isSupportStableToken(mintRequest.requestToken)) {
            revert Errors.MintTokenInvalid(mintRequest.stakeToken, mintRequest.requestToken);
        }
        uint8 mintTokenDecimals = TokenUtils.decimals(mintRequest.requestToken);
        uint256 minMintStakeAmount = AppPoolConfig.getStakeConfig().minPrecisionMultiple.mul(
            10 ** (mintTokenDecimals - AppTradeTokenConfig.getTradeTokenConfig(mintRequest.requestToken).precision)
        );
        if (mintRequest.requestTokenAmount < minMintStakeAmount) {
            revert Errors.MintStakeTokenTooSmall(minMintStakeAmount, mintRequest.requestTokenAmount);
        }

        uint256 requestTokenAmount = mintRequest.requestTokenAmount;

        if (mintRequest.isFromAccount) {
            requestTokenAmount = _transferFromAccount(requestId, mintRequest);
            Mint.Request storage mintStorageRequest = Mint.load(requestId);
            mintStorageRequest.transferAmountFromAccount = requestTokenAmount;
        }

        uint256 mintFees = FeeQueryProcess.calcMintOrRedeemFee(
            requestTokenAmount,
            AppPoolConfig.getUsdPoolConfig().mintFeeRate
        );
        FeeProcess.chargeMintOrRedeemFee(
            mintFees,
            mintRequest.stakeToken,
            mintRequest.requestToken,
            mintRequest.account,
            FeeProcess.FEE_MINT,
            false
        );

        uint256 baseMintAmount = requestTokenAmount - mintFees;

        UsdPool.Props storage pool = UsdPool.load();
        mintStakeAmount = _executeMintStakeUsd(mintRequest, pool, baseMintAmount);

        StakingAccount.Props storage accountProps = StakingAccount.loadOrCreate(mintRequest.account);
        accountProps.addStakeUsdAmount(mintStakeAmount);
        pool.addStableToken(mintRequest.requestToken, baseMintAmount);
        return mintStakeAmount;
    }

    /// @dev Internal function to execute minting of stake tokens
    /// @param params The mint request parameters
    /// @param pool The LP pool storage
    /// @param baseMintAmount The base amount of tokens to mint
    /// @return The amount of stake tokens minted
    function _executeMintStakeToken(
        Mint.Request memory params,
        LpPool.Props storage pool,
        uint256 baseMintAmount
    ) internal returns (uint256) {
        uint256 mintStakeTokenAmount = computeStakeAmountFromMintToken(pool, baseMintAmount);
        if (params.minStakeAmount > 0 && mintStakeTokenAmount < params.minStakeAmount) {
            revert Errors.MintStakeTokenTooSmall(params.minStakeAmount, mintStakeTokenAmount);
        }
        StakeToken(params.stakeToken).mint(params.account, mintStakeTokenAmount);
        return mintStakeTokenAmount;
    }

    /// @dev Internal function to execute minting of USD stake tokens (elfUSD)
    /// @param params The mint request parameters
    /// @param pool The USD pool storage
    /// @param baseMintAmount The base amount of tokens to mint
    /// @return The amount of stake tokens minted
    function _executeMintStakeUsd(
        Mint.Request memory params,
        UsdPool.Props storage pool,
        uint256 baseMintAmount
    ) internal returns (uint256) {
        address stableToken = params.requestToken;
        uint256 totalSupply = TokenUtils.totalSupply(params.stakeToken);
        uint8 tokenDecimals = TokenUtils.decimals(stableToken);
        uint8 stakeTokenDecimals = TokenUtils.decimals(params.stakeToken);
        uint256 poolValue = pool.getUsdPoolValue();
        uint256 mintStakeTokenAmount;
        if (totalSupply == 0 && poolValue == 0) {
            mintStakeTokenAmount = CalUtils.decimalsToDecimals(baseMintAmount, tokenDecimals, stakeTokenDecimals);
        } else if (totalSupply == 0 && poolValue > 0) {
            uint256 totalBaseMintAmount = baseMintAmount +
                CalUtils.usdToToken(poolValue, tokenDecimals, OracleProcess.getLatestUsdUintPrice(stableToken, true));
            mintStakeTokenAmount = CalUtils.decimalsToDecimals(totalBaseMintAmount, tokenDecimals, stakeTokenDecimals);
        } else if (poolValue == 0) {
            revert Errors.PoolValueIsZero();
        } else {
            uint256 baseMintAmountInUsd = CalUtils.tokenToUsd(
                baseMintAmount,
                tokenDecimals,
                OracleProcess.getLatestUsdUintPrice(stableToken, true)
            );
            mintStakeTokenAmount = totalSupply.mul(baseMintAmountInUsd).div(poolValue);
        }
        if (params.minStakeAmount > 0 && mintStakeTokenAmount < params.minStakeAmount) {
            revert Errors.MintStakeTokenTooSmall(params.minStakeAmount, mintStakeTokenAmount);
        }

        StakeToken(params.stakeToken).mint(params.account, mintStakeTokenAmount);

        return mintStakeTokenAmount;
    }

    /// @dev Internal function to transfer tokens from an account
    /// @param requestId Unique requestId
    /// @param mintRequest Mint.Request
    function _transferFromAccount(uint256 requestId, Mint.Request memory mintRequest) internal returns (uint256) {
        uint256 transferAmount = mintRequest.requestTokenAmount;
        address account = mintRequest.account;
        address token = mintRequest.requestToken;

        Account.Props storage tradeAccount = Account.load(account);
        uint256 maxWithdrawableTokenAmount = AssetsProcess.getMaxWithdrawableTokenAmount(tradeAccount, token);
        if (mintRequest.isMintMax) {
            transferAmount = maxWithdrawableTokenAmount;
        } else if (transferAmount > maxWithdrawableTokenAmount) {
            revert Errors.MintFailedWithBalanceNotEnough(account, token);
        }
        if (transferAmount == 0) {
            revert Errors.MintFailedWithBalanceNotEnough(account, token);
        }
        AssetsProcess.withdrawToken(requestId, tradeAccount, account, mintRequest.stakeToken, token, transferAmount);
        return transferAmount;
    }

    function _rollbackToAccount(uint256 requestId, Mint.Request memory mintRequest) internal {
        Account.Props storage tradeAccount = Account.load(mintRequest.account);
        tradeAccount.addToken(
            mintRequest.requestToken,
            mintRequest.transferAmountFromAccount,
            Account.UpdateSource.TRANSFER_TO_MINT
        );
        PositionMarginProcess.updateAllPositionFromBalanceMargin(
            requestId,
            mintRequest.account,
            mintRequest.requestToken,
            mintRequest.transferAmountFromAccount.toInt256(),
            ""
        );
        VaultProcess.transferOut(
            mintRequest.stakeToken,
            mintRequest.requestToken,
            IVault(address(this)).getPortfolioVaultAddress(),
            mintRequest.transferAmountFromAccount
        );
    }

    /// @dev Computes the amount of LP stake tokens from mint tokens
    /// @param pool The LP pool storage
    /// @param mintAmount The amount of mint tokens
    /// @return The amount of stake tokens
    function computeStakeAmountFromMintToken(
        LpPool.Props storage pool,
        uint256 mintAmount
    ) public view returns (uint256) {
        uint256 totalSupply = TokenUtils.totalSupply(pool.stakeToken);
        uint8 tokenDecimals = TokenUtils.decimals(pool.baseToken);
        uint256 poolValue = pool.getPoolValue();
        uint256 mintStakeTokenAmount;
        if (totalSupply == 0 && poolValue == 0) {
            mintStakeTokenAmount = mintAmount;
        } else if (totalSupply == 0 && poolValue > 0) {
            mintStakeTokenAmount =
                mintAmount +
                CalUtils.usdToToken(
                    poolValue,
                    tokenDecimals,
                    OracleProcess.getLatestUsdUintPrice(pool.baseToken, true)
                );
        } else if (poolValue == 0) {
            revert Errors.PoolValueIsZero();
        } else {
            uint256 baseMintAmountInUsd = CalUtils.tokenToUsd(
                mintAmount,
                tokenDecimals,
                OracleProcess.getLatestUsdUintPrice(pool.baseToken, true)
            );
            mintStakeTokenAmount = totalSupply.mul(baseMintAmountInUsd).div(poolValue);
        }
        return mintStakeTokenAmount;
    }
}
