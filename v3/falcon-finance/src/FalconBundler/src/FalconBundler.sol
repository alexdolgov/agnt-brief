// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

import {IFalconBundler} from "./interfaces/IFalconBundler.sol";
import {IFalconPosition} from "./interfaces/IFalconPosition.sol";
import {IPreCollateralizedMinter} from "./interfaces/IPreCollateralizedMinter.sol";
import {IUSDf} from "./interfaces/IUSDf.sol";

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

/**
 * @title FalconBundler
 * @notice A contract that bundles USDf minting and staking operations into single transactions
 * @dev This contract acts as an intermediary to simplify the user experience when:
 *      1. Minting USDf and staking directly to StakedUSDf
 *      2. Minting USDf, staking to StakedUSDf, and then staking to FalconPosition
 *      3. Taking existing USDf, staking to StakedUSDf, and then staking to FalconPosition
 */
contract FalconBundler is IFalconBundler, IERC721Receiver, AccessControl {

    using SafeERC20 for IERC20;

    // Immutable state variables
    IUSDf public immutable usdf;
    IERC4626 public immutable sUsdf;
    IFalconPosition public immutable falconPosition;
    IPreCollateralizedMinter public immutable minter;

    // Role constant
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    /**
     * @notice Constructs the FalconBundler contract
     * @param _admin Address of the admin
     * @param _operator Address of the operator
     * @param _usdf Address of the USDf token contract
     * @param _sUsdf Address of the StakedUSDf contract
     * @param _falconPosition Address of the FalconPosition contract
     * @param _minter Address of the PreCollateralizedMinter contract
     */
    constructor(
        address _admin,
        address _operator,
        address _usdf,
        address _sUsdf,
        address _falconPosition,
        address _minter
    ) {
        require(
            _admin != address(0) && _operator != address(0) && _usdf != address(0) && _sUsdf != address(0)
                && _falconPosition != address(0) && _minter != address(0),
            InvalidAddress()
        );

        usdf = IUSDf(_usdf);
        sUsdf = IERC4626(_sUsdf);
        falconPosition = IFalconPosition(_falconPosition);
        minter = IPreCollateralizedMinter(_minter);

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(OPERATOR_ROLE, _operator);
    }

    /**
     * @inheritdoc IFalconBundler
     */
    function mintToStakedUSDf(
        IPreCollateralizedMinter.MintParams calldata params,
        bytes calldata signature
    )
        external
        onlyRole(OPERATOR_ROLE)
        returns (uint256 shares)
    {
        // Mint USDf
        minter.preCollateralizedMint(params, signature);

        // Transfer USDf from user to bundler
        IERC20(address(usdf)).safeTransferFrom(params.recipient, address(this), params.amount);

        // Approve and stake to sUSDf
        IERC20(address(usdf)).approve(address(sUsdf), params.amount);
        shares = sUsdf.deposit(params.amount, params.recipient);
    }

    /**
     * @inheritdoc IFalconBundler
     */
    function mintToFalconPosition(
        IPreCollateralizedMinter.MintParams calldata params,
        uint256 duration,
        bytes calldata signature
    )
        external
        onlyRole(OPERATOR_ROLE)
        returns (uint256 tokenId)
    {
        // Mint USDf
        minter.preCollateralizedMint(params, signature);

        // Transfer USDf from user to bundler
        IERC20(address(usdf)).safeTransferFrom(params.recipient, address(this), params.amount);

        // Approve and stake to sUSDf
        IERC20(address(usdf)).approve(address(sUsdf), params.amount);
        uint256 sUsdfAmount = sUsdf.deposit(params.amount, address(this));

        // Approve and stake to FalconPosition
        sUsdf.approve(address(falconPosition), sUsdfAmount);
        tokenId = falconPosition.mint(sUsdfAmount, duration);

        // Transfer NFT to recipient
        IERC721(address(falconPosition)).safeTransferFrom(address(this), params.recipient, tokenId);
    }

    /**
     * @inheritdoc IFalconBundler
     */
    function stakeToFalconPosition(
        uint256 amount,
        uint256 duration,
        address recipient
    )
        external
        returns (uint256 tokenId)
    {
        require(amount != 0, InvalidAmount());
        require(recipient != address(0), InvalidAddress());

        // Transfer USDf from caller
        IERC20(address(usdf)).safeTransferFrom(msg.sender, address(this), amount);

        // Approve and stake to sUSDf
        IERC20(address(usdf)).approve(address(sUsdf), amount);
        uint256 sUsdfAmount = sUsdf.deposit(amount, address(this));

        // Approve and stake to FalconPosition
        IERC20(address(sUsdf)).approve(address(falconPosition), sUsdfAmount);
        tokenId = falconPosition.mint(sUsdfAmount, duration);

        // Transfer NFT to recipient
        IERC721(address(falconPosition)).safeTransferFrom(address(this), recipient, tokenId);
    }

    /**
     * @notice Required implementation for IERC721Receiver
     * @dev This function is called by the FalconPosition contract when minting NFTs to this contract
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    )
        external
        override
        returns (bytes4)
    {
        return IERC721Receiver.onERC721Received.selector;
    }

}
