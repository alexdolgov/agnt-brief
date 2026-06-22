// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "./HourglassLockDepositorBase.sol";
import {IEtherFiLUSD, ERC20} from "@interfaces/LRTInterfaces.sol";

/**
 *  @notice Each timelocked token will be responsible for managing it's own types of deposits & withdrawals.
 *      This may include different numbers of receipt tokens.
 */
contract HourglassLiquidUSDLockDepositor is HourglassLockDepositorBase {
    using SafeERC20 for IERC20;
    using TransientPrimitivesLib for taddress;
    using TransientPrimitivesLib for tuint256;

    address internal minter;
    address internal accountant;

    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the depositor
    /// @param _underlying The underlying token address
    /// @param _maturity The maturity timestamp
    /// @param _nameSuffix The suffix to append to the name
    /// @param _symbolSuffix The suffix to append to the symbol
    /// @param _receiptImpl The receipt implementation address
    /// @param _decimals The number of decimals of the deposit token
    /// @param _minter The minter address
    /// @param _accountant The accountant address
    function initialize(
        address _underlying,
        uint256 _maturity,
        string memory _nameSuffix,
        string memory _symbolSuffix,
        address _receiptImpl,
        uint256 _decimals,
        address _minter,
        address _accountant
    ) external initializer {
        minter = _minter;
        accountant = _accountant;
        __Depositor_Init(_underlying, _maturity, _nameSuffix, _symbolSuffix, _receiptImpl, _decimals);
    }

    /// @notice Mint Liquid USD with the assets held in this contract
    /// @notice Must be called atomically after entering the contract and transferring in the amount to mint with
    /// @param minMintReceivedSlippageBps The minimum amount of Liquid USD to mint based on slippage (converts within to Liquid USD)
    /// @param lusdDepositAsset The address of the deposit asset to mint Liquid USD with
    /// @param sourceOfFunds The address to return any excess funds to
    /// @return amountDepositAssetMinted The amount of the deposit asset minted into Liquid USD
    /**
     *  @dev To call this, first enter the contract with the amount to deposit into Liquid USD.
     *       Push those assets into this contract.
     *       Then call this function to mint the Liquid USD that cannot be transferred for 72 hours.
     *       Once the deposit asset is minted and held here, call `depositTo` to execute the deposit.
     *       This contract should remain entered until the deposit is called.
     */
    function mintLockedUnderlying(uint256 minMintReceivedSlippageBps, address lusdDepositAsset, address sourceOfFunds)
        external
        returns (uint256 amountDepositAssetMinted)
    {
        // since funds are pushed in prior to this being called, lock the contract
        address entrant = _tEntrant.get();
        uint256 amountToMintWith = _tAmount.get();

        // must be entered as there are undeposited but commited funds
        if (entrant == address(0)) revert NotEntered();
        // only the entrant can call while funds are held but undeposited
        if (msg.sender != entrant) revert CallerNotEntrant();
        // must have funds to mint with
        if (amountToMintWith == 0) revert InsufficientFunds();
        // must have supplied the assets for minting with between entering & calling this
        if (IERC20(lusdDepositAsset).balanceOf(address(this)) < amountToMintWith) revert InsufficientAssetSupplied();

        // check that the lusd deposit asset has been approved to the minter
        if (IERC20(lusdDepositAsset).allowance(address(this), underlying) < amountToMintWith) {
            IERC20(lusdDepositAsset).safeIncreaseAllowance(underlying, type(uint256).max);
        }

        // deposit the assets into Liquid USD
        uint256 depositAssetDecimals = uint256(IEtherFiLUSD(lusdDepositAsset).decimals());
        uint256 shareRate = IEtherFiLUSD(accountant).getRate();

        // calculate the minimum share quantity acceptable based on slippage
        // divide out the shareRate decimals (6) & the slippage bps decimals (4) plus deposit asset decimals
        uint256 minShareAcceptable = (
            (((10 ** depositAssetDecimals) * amountToMintWith) / shareRate) * minMintReceivedSlippageBps
        ) / (10 ** (10 + depositAssetDecimals));

        amountDepositAssetMinted =
            IEtherFiLUSD(minter).deposit(ERC20(lusdDepositAsset), amountToMintWith, minShareAcceptable);
        // store the amount minted, overwriting the amount provided when entered
        _tAmount.set(amountDepositAssetMinted);

        // minting Liquid USD has slippage & may not utilize 100% of the funds, so return any excess
        uint256 afterMintBalance = IERC20(lusdDepositAsset).balanceOf(address(this));
        if (afterMintBalance > 0) {
            IERC20(lusdDepositAsset).safeTransfer(sourceOfFunds, afterMintBalance);
        }
    }
}
