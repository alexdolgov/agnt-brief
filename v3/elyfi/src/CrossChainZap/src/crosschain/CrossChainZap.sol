// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IOFT, SendParam, OFTReceipt} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {MessagingReceipt, MessagingFee} from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";
import {SingleAdminAccessControl} from "src/utils/SingleAdminAccessControl.sol";
import {IERC4626Minimal} from "src/interfaces/IERC4626Minimal.sol";
import {Router} from "src/MintRedeem/Router.sol";

/// @title CrossChainZap
/// @notice Combines Router.mint() + sELUSD.deposit() + OFTAdapter.send() into a single atomic call
/// @dev Used by keepers and users to supply sELUSD to destination chains in one transaction
contract CrossChainZap is SingleAdminAccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             STRUCTS
    //////////////////////////////////////////////////////////////*/

    struct ZapOrder {
        address collateralAsset;
        uint256 collateralAmount;
        uint256 minElusdAmount;
        uint256 minShares;
        uint32 dstEid;
        bytes32 recipient;
        uint256 minAmountLD;
        bytes extraOptions;
        address beneficiary;
        uint256 srcChainId;
        uint256 requestId;
    }

    struct ZapParams {
        address collateralAsset;
        uint256 collateralAmount;
        uint256 minElusdAmount;
        uint256 minShares;
        uint32 dstEid;
        bytes32 recipient;
        uint256 minAmountLD;
        bytes extraOptions;
    }

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error ZeroAddress();
    error ZeroAmount();
    error SlippageExceeded();
    error ETHTransferFailed();

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted by keeper zap — links to Kaia CrossChainRouter requestId
    event Zapped(
        address indexed beneficiary,
        address indexed collateralAsset,
        uint256 collateralAmount,
        uint256 elusdMinted,
        uint256 sharesDeposited,
        uint256 srcChainId,
        uint256 requestId
    );

    /// @notice Emitted by user zap — no request linkage
    event ZappedByUser(
        address indexed caller,
        address indexed collateralAsset,
        uint256 collateralAmount,
        uint256 elusdMinted,
        uint256 sharesDeposited,
        uint32 dstEid,
        bytes32 recipient
    );

    event DstGasLimitSet(uint128 gasLimit);
    event ApprovalsSet(address[] collateralAssets);
    event EmergencyWithdraw(address indexed token, address indexed to, uint256 amount);
    event EmergencyWithdrawETH(address indexed to, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                             CONSTANTS
    //////////////////////////////////////////////////////////////*/

    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    /*//////////////////////////////////////////////////////////////
                             IMMUTABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Router contract for minting ELUSD
    Router public immutable router;

    /// @notice ELUSD token
    IERC20 public immutable elusd;

    /// @notice sELUSD vault (ERC4626)
    IERC4626Minimal public immutable sElusd;

    /// @notice sELUSD OFTAdapter for bridging to destination chain
    address public immutable sElusdOftAdapter;

    /// @notice OFT decimal conversion rate for dust removal
    uint256 public immutable decimalConversionRate;

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice LayerZero destination gas limit
    uint128 public dstGasLimit;

    /*//////////////////////////////////////////////////////////////
                             CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @param _admin Admin address
    /// @param _router Router contract address
    /// @param _elusd ELUSD token address
    /// @param _sElusd sELUSD vault address
    /// @param _sElusdOftAdapter sELUSD OFTAdapter address
    constructor(
        address _admin,
        address _router,
        address _elusd,
        address _sElusd,
        address _sElusdOftAdapter,
        uint256 _decimalConversionRate
    ) {
        if (
            _admin == address(0) || _router == address(0) || _elusd == address(0) || _sElusd == address(0)
                || _sElusdOftAdapter == address(0) || _decimalConversionRate == 0
        ) {
            revert ZeroAddress();
        }

        router = Router(_router);
        elusd = IERC20(_elusd);
        sElusd = IERC4626Minimal(_sElusd);
        sElusdOftAdapter = _sElusdOftAdapter;
        decimalConversionRate = _decimalConversionRate;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(KEEPER_ROLE, _admin);
    }

    /*//////////////////////////////////////////////////////////////
                             KEEPER FUNCTION
    //////////////////////////////////////////////////////////////*/

    /// @notice Keeper zap: serves a CrossChainRouter request by minting + bridging in one call
    /// @param _order ZapOrder struct with request linkage (beneficiary, srcChainId, requestId)
    function zap(ZapOrder calldata _order) external payable onlyRole(KEEPER_ROLE) nonReentrant {
        (uint256 elusdMinted, uint256 shares) = _executeZap(
            _order.collateralAsset,
            _order.collateralAmount,
            _order.minElusdAmount,
            _order.minShares,
            _order.dstEid,
            _order.recipient,
            _order.minAmountLD,
            _order.extraOptions
        );

        emit Zapped(
            _order.beneficiary,
            _order.collateralAsset,
            _order.collateralAmount,
            elusdMinted,
            shares,
            _order.srcChainId,
            _order.requestId
        );
    }

    /*//////////////////////////////////////////////////////////////
                             USER FUNCTION
    //////////////////////////////////////////////////////////////*/

    /// @notice User zap: mint + stake + bridge in one call (no request linkage)
    /// @param _params ZapParams struct with bridge parameters
    function zapByUser(ZapParams calldata _params) external payable nonReentrant {
        (uint256 elusdMinted, uint256 shares) = _executeZap(
            _params.collateralAsset,
            _params.collateralAmount,
            _params.minElusdAmount,
            _params.minShares,
            _params.dstEid,
            _params.recipient,
            _params.minAmountLD,
            _params.extraOptions
        );

        emit ZappedByUser(
            msg.sender,
            _params.collateralAsset,
            _params.collateralAmount,
            elusdMinted,
            shares,
            _params.dstEid,
            _params.recipient
        );
    }

    /*//////////////////////////////////////////////////////////////
                             VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Quote the full zap: estimate ELUSD, shares, and LZ fee
    /// @param _collateralAsset Collateral token address
    /// @param _collateralAmount Amount of collateral
    /// @param _dstEid LayerZero destination endpoint ID
    /// @param _recipient Recipient address on destination chain (as bytes32)
    /// @param _extraOptions Extra LayerZero options
    /// @return estimatedElusd Estimated ELUSD from Router.quoteDeposit()
    /// @return estimatedShares Estimated sELUSD shares from previewDeposit()
    /// @return minAmountLD Dust-removed shares (use as minAmountLD when calling zap)
    /// @return lzFee Estimated LayerZero messaging fee
    function quoteZap(
        address _collateralAsset,
        uint256 _collateralAmount,
        uint32 _dstEid,
        bytes32 _recipient,
        bytes calldata _extraOptions
    )
        external
        view
        returns (uint256 estimatedElusd, uint256 estimatedShares, uint256 minAmountLD, MessagingFee memory lzFee)
    {
        // Step 1: Quote ELUSD from Router
        estimatedElusd = router.quoteDeposit(_collateralAsset, _collateralAmount);

        // Step 2: Quote sELUSD shares
        estimatedShares = sElusd.previewDeposit(estimatedElusd);

        // Step 3: Quote LZ fee (remove dust to match OFT's internal truncation)
        minAmountLD = (estimatedShares / decimalConversionRate) * decimalConversionRate;
        SendParam memory sendParam = SendParam({
            dstEid: _dstEid,
            to: _recipient,
            amountLD: minAmountLD,
            minAmountLD: minAmountLD,
            extraOptions: _extraOptions,
            composeMsg: "",
            oftCmd: ""
        });

        lzFee = IOFT(sElusdOftAdapter).quoteSend(sendParam, false);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Max approve collateral→Router, ELUSD→sELUSD, sELUSD→OFTAdapter
    /// @param _collateralAssets Array of collateral asset addresses to approve for Router
    function setApprovals(address[] calldata _collateralAssets) external onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint256 i = 0; i < _collateralAssets.length; i++) {
            IERC20(_collateralAssets[i]).forceApprove(address(router), type(uint256).max);
        }
        elusd.forceApprove(address(sElusd), type(uint256).max);
        IERC20(address(sElusd)).forceApprove(sElusdOftAdapter, type(uint256).max);

        emit ApprovalsSet(_collateralAssets);
    }

    /// @notice Set the LayerZero destination gas limit
    /// @param _dstGasLimit Gas limit for destination execution
    function setDstGasLimit(uint128 _dstGasLimit) external onlyRole(DEFAULT_ADMIN_ROLE) {
        dstGasLimit = _dstGasLimit;
        emit DstGasLimitSet(_dstGasLimit);
    }

    /// @notice Emergency withdraw ERC20 tokens
    /// @param _token Token address
    /// @param _to Recipient address
    /// @param _amount Amount to withdraw
    function emergencyWithdraw(address _token, address _to, uint256 _amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_to == address(0)) revert ZeroAddress();
        IERC20(_token).safeTransfer(_to, _amount);
        emit EmergencyWithdraw(_token, _to, _amount);
    }

    /// @notice Emergency withdraw ETH
    /// @param _to Recipient address
    /// @param _amount Amount to withdraw
    function emergencyWithdrawETH(address _to, uint256 _amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_to == address(0)) revert ZeroAddress();
        (bool success,) = _to.call{value: _amount}("");
        if (!success) revert ETHTransferFailed();
        emit EmergencyWithdrawETH(_to, _amount);
    }

    /// @notice Allow contract to receive ETH (for refunds from LZ)
    receive() external payable {}

    /*//////////////////////////////////////////////////////////////
                             INTERNAL
    //////////////////////////////////////////////////////////////*/

    function _executeZap(
        address _collateralAsset,
        uint256 _collateralAmount,
        uint256 _minElusdAmount,
        uint256 _minShares,
        uint32 _dstEid,
        bytes32 _recipient,
        uint256 _minAmountLD,
        bytes calldata _extraOptions
    ) internal returns (uint256 elusdMinted, uint256 shares) {
        if (_collateralAmount == 0) revert ZeroAmount();

        // Step 1: Pull collateral from caller
        IERC20(_collateralAsset).safeTransferFrom(msg.sender, address(this), _collateralAmount);

        // Step 2: Mint ELUSD via Router (beneficiary = this contract)
        uint256 elusdBefore = elusd.balanceOf(address(this));
        router.mint(address(this), _collateralAsset, _collateralAmount, _minElusdAmount, "");
        elusdMinted = elusd.balanceOf(address(this)) - elusdBefore;
        if (elusdMinted < _minElusdAmount) revert SlippageExceeded();

        // Step 3: Deposit ELUSD into sELUSD vault
        shares = sElusd.deposit(elusdMinted, address(this));
        if (shares < _minShares) revert SlippageExceeded();

        // Step 4: Bridge sELUSD to destination via OFTAdapter
        SendParam memory sendParam = SendParam({
            dstEid: _dstEid,
            to: _recipient,
            amountLD: shares,
            minAmountLD: _minAmountLD,
            extraOptions: _extraOptions,
            composeMsg: "",
            oftCmd: ""
        });

        IOFT(sElusdOftAdapter).send{value: msg.value}(sendParam, MessagingFee(msg.value, 0), msg.sender);
    }
}
