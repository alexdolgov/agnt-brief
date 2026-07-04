// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {MoreVaultsLib} from "@More-Vaults-Core/src/libraries/MoreVaultsLib.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {AccessControlLib} from "@More-Vaults-Core/src/libraries/AccessControlLib.sol";
import {IOrigamiInvestment} from "../interfaces/Origami/IOrigamiInvestment.sol";
import {IOrigamiLovTokenFlashAndBorrowManager} from "../interfaces/Origami/IOrigamiLovTokenFlashAndBorrowManager.sol";
import {IMoreLeverageFacet} from "../interfaces/facets/IMoreLeverageFacet.sol";
import {BaseFacetInitializer} from "@More-Vaults-Core/src/facets/BaseFacetInitializer.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

error UnsupportedAsset(address);
error UnsupportedLovToken(address);

contract MoreLeverageFacet is BaseFacetInitializer, IMoreLeverageFacet {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using Math for uint256;

    bytes32 constant ORIGAMI_VAULT_TOKENS_ID =
        keccak256("ORIGAMI_VAULT_TOKENS_ID");
    uint48 constant MAX_SLIPPAGE_BPS_FOR_ACCOUNTING = 1000;

    address constant WFLOW = 0xd3bF53DAC106A0290B0483EcBC89d40FcC961f3e;
    address constant ankrFlow = 0x1b97100eA1D7126C4d60027e231EA4CB25314bdb;

    function INITIALIZABLE_STORAGE_SLOT()
        internal
        pure
        override
        returns (bytes32)
    {
        return
            keccak256("MoreVaults.storage.initializable.MoreLeverageFacet");
    }

    function facetName() external pure returns (string memory) {
        return "MoreLeverageFacet";
    }

    function facetVersion() external pure returns (string memory) {
        return "1.0.0";
    }

    function initialize(bytes calldata data) external initializerFacet {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        bytes32 facetSelector = abi.decode(data, (bytes32));
        ds.facetsForAccounting.push(facetSelector);
        ds.supportedInterfaces[type(IMoreLeverageFacet).interfaceId] = true;
        ds.vaultExternalAssets[MoreVaultsLib.TokenType.HeldToken].add(
            ORIGAMI_VAULT_TOKENS_ID
        );
    }

    function onFacetRemoval(bool isReplacing) external {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        ds.supportedInterfaces[type(IMoreLeverageFacet).interfaceId] = false;

        MoreVaultsLib.removeFromFacetsForAccounting(
            ds,
            IMoreLeverageFacet.accountingMoreLeverageFacet.selector,
            isReplacing
        );

        if (!isReplacing) {
            ds.vaultExternalAssets[MoreVaultsLib.TokenType.HeldToken].remove(
                ORIGAMI_VAULT_TOKENS_ID
            );
        }
    }

    function accountingMoreLeverageFacet()
        external
        view
        returns (uint256 sum, bool isPositive)
    {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        EnumerableSet.AddressSet storage lovTokensHeld = ds.tokensHeld[
            ORIGAMI_VAULT_TOKENS_ID
        ];

        for (uint i = 0; i < lovTokensHeld.length(); ) {
            address lovToken = lovTokensHeld.at(i);
            if (ds.isAssetAvailable[lovToken]) {
                unchecked {
                    ++i;
                }
                continue;
            }

            address manager = IOrigamiInvestment(lovToken).manager();
            address borrowLend = IOrigamiInvestment(manager).borrowLend();
            address oracle = IOrigamiInvestment(manager)
                .debtTokenToReserveTokenOracle();

            uint256 suppliedBalance = IOrigamiInvestment(borrowLend)
                .suppliedBalance();
            uint256 debtBalance = IOrigamiInvestment(borrowLend).debtBalance();

            uint256 aankrFlowBalance = IERC20(ankrFlow).balanceOf(borrowLend);
            uint256 wflowBalance = IERC20(WFLOW).balanceOf(borrowLend);

            uint256 price = IOrigamiInvestment(oracle).latestPrice(
                IOrigamiInvestment.PriceType.SPOT_PRICE,
                IOrigamiInvestment.Rounding.ROUND_DOWN
            );

            uint256 morigamiNAV = suppliedBalance.mulDiv(1e18, price) -
                debtBalance;

            sum +=
                morigamiNAV +
                wflowBalance +
                aankrFlowBalance.mulDiv(1e18, price);

            unchecked {
                ++i;
            }
        }
        isPositive = true;
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function investWithToken(
        address lovToken,
        IOrigamiInvestment.InvestQuoteData calldata quoteData
    ) external returns (uint256 investmentAmount) {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(lovToken);
        address fromToken = quoteData.fromToken;
        MoreVaultsLib.validateAssetAvailable(fromToken);
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();

        IERC20(fromToken).forceApprove(lovToken, quoteData.fromTokenAmount);
        investmentAmount = IOrigamiInvestment(lovToken).investWithToken(
            quoteData
        );
        ds.tokensHeld[ORIGAMI_VAULT_TOKENS_ID].add(lovToken);
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function investWithNative(
        address lovToken,
        IOrigamiInvestment.InvestQuoteData calldata quoteData
    ) external returns (uint256 investmentAmount) {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(lovToken);
        MoreVaultsLib.validateAssetAvailable(quoteData.fromToken);
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();
        investmentAmount = IOrigamiInvestment(lovToken).investWithNative{
            value: quoteData.fromTokenAmount
        }(quoteData);
        ds.tokensHeld[ORIGAMI_VAULT_TOKENS_ID].add(lovToken);
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function exitToToken(
        address lovToken,
        IOrigamiInvestment.ExitQuoteData calldata quoteData
    ) public returns (uint256 toTokenAmount) {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(lovToken);
        MoreVaultsLib.validateAssetAvailable(quoteData.toToken);

        toTokenAmount = _exitTo(lovToken, quoteData, false);
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function exitToNative(
        address lovToken,
        IOrigamiInvestment.ExitQuoteData calldata quoteData
    ) public returns (uint256 toTokenAmount) {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(lovToken);
        MoreVaultsLib.validateAssetAvailable(address(0));

        toTokenAmount = _exitTo(lovToken, quoteData, true);
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function rebalanceUp(
        address manager,
        uint256 flashLoanAmount,
        uint256 collateralToWithdraw,
        bytes calldata swapData,
        uint256 repaySurplusThreshold,
        uint128 minNewAL,
        uint128 maxNewAL
    ) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(manager);
        IOrigamiLovTokenFlashAndBorrowManager.RebalanceUpParams
            memory params = IOrigamiLovTokenFlashAndBorrowManager
                .RebalanceUpParams({
                    flashLoanAmount: flashLoanAmount,
                    collateralToWithdraw: collateralToWithdraw,
                    swapData: swapData,
                    repaySurplusThreshold: repaySurplusThreshold,
                    minNewAL: minNewAL,
                    maxNewAL: maxNewAL
                });
        IOrigamiLovTokenFlashAndBorrowManager(manager).rebalanceUp(params);
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function forceRebalanceUp(
        address manager,
        uint256 flashLoanAmount,
        uint256 collateralToWithdraw,
        bytes calldata swapData,
        uint256 repaySurplusThreshold,
        uint128 minNewAL,
        uint128 maxNewAL
    ) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(manager);
        IOrigamiLovTokenFlashAndBorrowManager.RebalanceUpParams
            memory params = IOrigamiLovTokenFlashAndBorrowManager
                .RebalanceUpParams({
                    flashLoanAmount: flashLoanAmount,
                    collateralToWithdraw: collateralToWithdraw,
                    swapData: swapData,
                    repaySurplusThreshold: repaySurplusThreshold,
                    minNewAL: minNewAL,
                    maxNewAL: maxNewAL
                });
        IOrigamiLovTokenFlashAndBorrowManager(manager).forceRebalanceUp(params);
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function rebalanceDown(
        address manager,
        uint256 flashLoanAmount,
        uint256 minExpectedReserveToken,
        bytes calldata swapData,
        uint128 minNewAL,
        uint128 maxNewAL
    ) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(manager);
        IOrigamiLovTokenFlashAndBorrowManager.RebalanceDownParams
            memory params = IOrigamiLovTokenFlashAndBorrowManager
                .RebalanceDownParams({
                    flashLoanAmount: flashLoanAmount,
                    minExpectedReserveToken: minExpectedReserveToken,
                    swapData: swapData,
                    minNewAL: minNewAL,
                    maxNewAL: maxNewAL
                });
        IOrigamiLovTokenFlashAndBorrowManager(manager).rebalanceDown(params);
    }

    /**
     * @inheritdoc IMoreLeverageFacet
     */
    function forceRebalanceDown(
        address manager,
        uint256 flashLoanAmount,
        uint256 minExpectedReserveToken,
        bytes calldata swapData,
        uint128 minNewAL,
        uint128 maxNewAL
    ) external {
        AccessControlLib.validateDiamond(msg.sender);
        MoreVaultsLib.validateAddressWhitelisted(manager);
        IOrigamiLovTokenFlashAndBorrowManager.RebalanceDownParams
            memory params = IOrigamiLovTokenFlashAndBorrowManager
                .RebalanceDownParams({
                    flashLoanAmount: flashLoanAmount,
                    minExpectedReserveToken: minExpectedReserveToken,
                    swapData: swapData,
                    minNewAL: minNewAL,
                    maxNewAL: maxNewAL
                });
        IOrigamiLovTokenFlashAndBorrowManager(manager).forceRebalanceDown(
            params
        );
    }

    function _exitTo(
        address lovToken,
        IOrigamiInvestment.ExitQuoteData calldata quoteData,
        bool toNative
    ) internal returns (uint256 toTokenAmount) {
        MoreVaultsLib.MoreVaultsStorage storage ds = MoreVaultsLib
            .moreVaultsStorage();

        if (toNative) {
            toTokenAmount = IOrigamiInvestment(lovToken).exitToNative(
                quoteData,
                payable(address(this))
            );
        } else {
            toTokenAmount = IOrigamiInvestment(lovToken).exitToToken(
                quoteData,
                address(this)
            );
        }

        MoreVaultsLib.removeTokenIfnecessary(
            ds.tokensHeld[ORIGAMI_VAULT_TOKENS_ID],
            lovToken
        );
    }
}