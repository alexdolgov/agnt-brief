// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {Multicall} from "../../lib/openzeppelin-contracts/contracts/utils/Multicall.sol";
import {SafeERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC721} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC721.sol";
import {IERC721Receiver} from "../../lib/openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IYieldStrippedToken} from "../interfaces/IYieldStrippedToken.sol";
import {BlastManager} from "../libraries/BlastManager.sol";
import {FixedRate} from "../FixedRate.sol";
import {VariableRate} from "../VariableRate.sol";
import {FixedRateNFT} from "./FixedRateNFT.sol";
import {VariableRateNFT} from "./VariableRateNFT.sol";
import {DuoAssetToken} from "./DuoAssetToken.sol";
import {CoreRef} from "../core/CoreRef.sol";

address constant WETH = 0x4300000000000000000000000000000000000004;

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
}

contract WrapMintV2 is IERC721Receiver, ReentrancyGuard, Multicall, CoreRef, BlastManager {
    using SafeERC20 for IERC20;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    address public VAULT;

    /* Variable */
    address public duoAssetToken;
    address public fixedRateNft;
    address public variableRateNft;

    /* Storage */
    mapping(address => bool) public whitelistedExchanges;
    mapping(address => address) public fixedRateContracts;
    mapping(address => address) public variableRateContracts;
    mapping(uint256 => address) public fixedRateNfts;
    mapping(uint256 => address) public variableRateNfts;

    /* Events */
    event MintFixedRate(address indexed fixedRate, address indexed owner, uint256 principal, uint256 yield);
    event BurnFixedRate(address indexed fixedRate, uint256 principal, uint256 yieldToUnlock, uint256 yieldToRelease);
    event MintVariableRate(address indexed variableRate, address indexed owner, uint256 amount);
    event BurnVariableRate(address indexed variableRate, uint256 amount, uint256 yield, uint256 fee);
    event UpdateExchange(address indexed exchange, bool status);
    event UpdateFixedRateNft(address indexed nft);
    event UpdateVariableRateNft(address indexed nft);
    event UpdateDuoAssetToken(address indexed duoAssetToken);

    constructor(address token, address vault, address core) CoreRef(core) {
        TOKEN = token;
        VAULT = vault;
    }

    /*==============================================================
                               Swap Logic
    ==============================================================*/

    /**
     * @notice swap the token using a whitelisted exchange
     * @param exchange the exchange to swap on
     * @param token the source token to swap
     * @param amountIn the amount of token to swap
     * @param amountOutMin the minimum amount of token to receive
     * @param data the swap data
     * @return amountOut the amount of token received
     */
    function _swap(
        address exchange,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata data
    ) internal returns (uint256 amountOut) {
        require(whitelistedExchanges[exchange], "WrapMint: unauthorized exchange");

        // approve spending to exchange
        IERC20(token).approve(exchange, amountIn);

        // swap
        // solhint-disable-next-line avoid-low-level-calls
        (bool success, ) = exchange.call(data);
        require(success, "WrapMint: swap failed");

        // received amount slippage
        amountOut = IERC20(IYieldStrippedToken(TOKEN).token()).balanceOf(address(this));
        require(amountOut >= amountOutMin, "WrapMint: slippage");

        // approve spending back to zero
        IERC20(token).approve(exchange, 0);
    }

    /*==============================================================
                              Mint Fixed Rate
    ==============================================================*/

    /**
     * @notice mint a fixed rate contract (represented as NFT), input with ERC20 token
     */
    function mintFixedRate(
        address exchange,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 minLockedYield,
        bytes calldata data
    ) external nonReentrant returns (address fixedRateContract, uint256 amountOut, uint256 lockedYield) {
        // transfer input amount
        IERC20(token).safeTransferFrom(msg.sender, address(this), amountIn);

        (fixedRateContract, amountOut, lockedYield) = _mintFixedRate(
            exchange,
            token,
            amountIn,
            amountOutMin,
            minLockedYield,
            data
        );

        // refund remaining
        uint256 remaining = IERC20(token).balanceOf(address(this));
        if (remaining > 0) {
            IERC20(token).safeTransfer(msg.sender, remaining);
        }
    }

    /**
     * @notice mint a fixed rate contract (represented as NFT), input with ETH
     */
    function mintFixedRateEth(
        address exchange,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 minLockedYield,
        bytes calldata data
    ) external payable nonReentrant returns (address fixedRateContract, uint256 amountOut, uint256 lockedYield) {
        // wrap to WETH
        require(msg.value == amountIn, "WrapMint: insufficient ETH");
        IWETH(WETH).deposit{value: amountIn}();

        (fixedRateContract, amountOut, lockedYield) = _mintFixedRate(
            exchange,
            WETH,
            amountIn,
            amountOutMin,
            minLockedYield,
            data
        );

        // refund remaining
        uint256 remaining = IERC20(WETH).balanceOf(address(this));
        if (remaining > 0) {
            IWETH(WETH).withdraw(remaining);
            payable(msg.sender).transfer(remaining);
        }
    }

    /**
     * @notice mint a fixed rate contract (represented as NFT)
     * @param exchange the exchange to swap on
     * @param token the source token to swap
     * @param amountIn the amount of token to swap
     * @param amountOutMin the minimum amount of token to receive
     * @param minLockedYield the minimum amount of yield to lock
     * @param data the swap data
     * @return fixedRateContract the address of the fixed rate contract
     * @return amountOut the amount of token received
     * @return lockedYield the amount of yield locked
     */
    function _mintFixedRate(
        address exchange,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 minLockedYield,
        bytes calldata data
    ) internal returns (address fixedRateContract, uint256 amountOut, uint256 lockedYield) {
        // swap if needed
        address underlyingToken = IYieldStrippedToken(TOKEN).token();
        amountOut = amountIn; // if token is already underlying, no swap needed
        if (token != underlyingToken) {
            amountOut = _swap(exchange, token, amountIn, amountOutMin, data);
        }

        // approve the underlying spending to yield stripped token
        IERC20(underlyingToken).approve(TOKEN, amountOut);

        // wrap
        ///@dev if token is already wrapped TOKEN, call FixedRateNFT.mint directly
        IYieldStrippedToken(TOKEN).wrap(amountOut);

        // approve the underlying spending back to zero
        IERC20(underlyingToken).approve(TOKEN, 0);

        // approve wrapped token spending to vault
        IERC20(TOKEN).approve(VAULT, amountOut);

        // mint fixed rate contract
        (fixedRateContract, lockedYield, ) = IVault(VAULT).mintFixedRate(amountOut, minLockedYield, address(this));

        // approve wrapped token spending back to zero
        IERC20(TOKEN).approve(VAULT, 0);

        // mark the ownership of fixed rate contract
        fixedRateContracts[fixedRateContract] = msg.sender;

        // mint asset token to sender
        DuoAssetToken(duoAssetToken).mint(msg.sender, amountOut + lockedYield);

        emit MintFixedRate(fixedRateContract, msg.sender, amountOut, lockedYield);
    }

    /*==============================================================
                              Burn Fixed Rate
    ==============================================================*/

    /**
     * @notice burn a fixed rate contract, together with asset token, receiving principal and yield
     * @param fixedRate the fixed rate contract to burn
     * @param amount the amount of fixed rate contract to burn
     * @return yieldToUnlock the amount of yield to unlock
     * @return yieldToRelease the amount of yield to release
     */
    function burnFixedRate(
        address fixedRate,
        uint256 amount
    ) external nonReentrant returns (uint256 yieldToUnlock, uint256 yieldToRelease) {
        // caller must be owner
        require(fixedRateContracts[fixedRate] == msg.sender, "WrapMint: unauthorized");

        // use fixed rate contract to burn
        (yieldToUnlock, yieldToRelease) = FixedRate(fixedRate).burn(amount);

        // transfer the underlying to sender
        IYieldStrippedToken(TOKEN).unwrapTo(amount + yieldToRelease, msg.sender);

        // must burn the same amount of asset token
        DuoAssetToken(duoAssetToken).burnFrom(msg.sender, amount + yieldToUnlock);

        emit BurnFixedRate(fixedRate, amount, yieldToUnlock, yieldToRelease);
    }

    /*==============================================================
                           Withdraw Fixed Rate
    ==============================================================*/

    /**
     * @notice withdraw the principal of fixed rate contract, at emergency, bypassing vault
     * @param fixedRate the fixed rate contract to withdraw
     * @param amount the amount of principal to withdraw
     */
    function withdrawFixedRate(address fixedRate, uint256 amount) external nonReentrant {
        // caller must be owner
        require(fixedRateContracts[fixedRate] == msg.sender, "WrapMint: unauthorized");

        // use fixed rate contract to withdraw
        FixedRate(fixedRate).withdraw(amount);

        // transfer the underlying to sender
        IYieldStrippedToken(TOKEN).unwrapTo(amount, msg.sender);

        // must burn the same amount of asset token
        DuoAssetToken(duoAssetToken).burnFrom(msg.sender, amount);
    }

    /*==============================================================
                           Mint Variable Rate
    ==============================================================*/

    /**
     * @notice mint a variable rate contract, input with ERC20 token
     */
    function mintVariableRate(
        address exchange,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata data
    ) external nonReentrant returns (address variableRateContract, uint256 amountOut) {
        // transfer input amount
        IERC20(token).safeTransferFrom(msg.sender, address(this), amountIn);

        (variableRateContract, amountOut) = _mintVariableRate(exchange, token, amountIn, amountOutMin, data);

        // refund remaining
        uint256 remaining = IERC20(token).balanceOf(address(this));
        if (remaining > 0) {
            IERC20(token).safeTransfer(msg.sender, remaining);
        }
    }

    /**
     * @notice mint a variable rate contract, input with ETH
     */
    function mintVariableRateEth(
        address exchange,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata data
    ) external payable nonReentrant returns (address variableRateContract, uint256 amountOut) {
        // wrap to WETH
        require(msg.value == amountIn, "WrapMint: insufficient ETH");
        IWETH(WETH).deposit{value: amountIn}();

        (variableRateContract, amountOut) = _mintVariableRate(exchange, WETH, amountIn, amountOutMin, data);

        // refund remaining
        uint256 remaining = IERC20(WETH).balanceOf(address(this));
        if (remaining > 0) {
            IWETH(WETH).withdraw(remaining);
            payable(msg.sender).transfer(remaining);
        }
    }

    /**
     * @notice mint a variable rate contract
     * @param exchange the exchange to swap on
     * @param token the source token to swap
     * @param amountIn the amount of token to swap
     * @param amountOutMin the minimum amount of token to receive
     * @param data the swap data
     * @return variableRateContract the address of the variable rate contract
     * @return amountOut the amount of token received
     */
    function _mintVariableRate(
        address exchange,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata data
    ) internal returns (address variableRateContract, uint256 amountOut) {
        // swap if needed
        address underlyingToken = IYieldStrippedToken(TOKEN).token();
        amountOut = amountIn; // if token is already underlying, no swap needed
        if (token != underlyingToken) {
            amountOut = _swap(exchange, token, amountIn, amountOutMin, data);
        }

        // approve the underlying spending to yield stripped token
        IERC20(underlyingToken).approve(TOKEN, amountOut);

        // wrap
        ///@dev if token is already wrapped TOKEN, call VAULT.mintVariableRate directly
        IYieldStrippedToken(TOKEN).wrap(amountOut);

        // approve the underlying spending back to zero
        IERC20(underlyingToken).approve(TOKEN, 0);

        // approve spending to vault
        IERC20(TOKEN).approve(VAULT, amountOut);

        // mint variable rate contract
        variableRateContract = IVault(VAULT).mintVariableRate(amountOut, address(this));

        // approve spending back to zero
        IERC20(TOKEN).approve(VAULT, 0);

        // mark the ownership of variable rate contract
        variableRateContracts[variableRateContract] = msg.sender;

        // mint asset token to sender
        DuoAssetToken(duoAssetToken).mint(msg.sender, amountOut);

        emit MintVariableRate(variableRateContract, msg.sender, amountOut);
    }

    /*==============================================================
                           Burn Variable Rate
    ==============================================================*/

    /**
     * @notice burn a variable rate contract, together with asset token, receiving principal and yield
     * @param variableRate the variable rate contract to burn
     * @param amount the amount of variable rate contract to burn
     * @param minYield the minimum amount of yield to unlock
     * @return yield the amount of yield unlocked
     * @return fee the amount of fee
     */
    function burnVariableRate(
        address variableRate,
        uint256 amount,
        uint256 minYield
    ) external nonReentrant returns (uint256 yield, uint256 fee) {
        // caller must be owner
        require(variableRateContracts[variableRate] == msg.sender, "WrapMint: unauthorized");

        // use variable rate contract to burn
        (yield, fee) = VariableRate(variableRate).burn(amount, minYield);

        // transfer the underlying to sender
        IYieldStrippedToken(TOKEN).unwrapTo(amount + yield + fee, msg.sender);

        // must burn the principal amount of asset token
        DuoAssetToken(duoAssetToken).burnFrom(msg.sender, amount);

        emit BurnVariableRate(variableRate, amount, yield, fee);
    }

    /*==============================================================
                           Withdraw Variable Rate
    ==============================================================*/

    /**
     * @notice withdraw the principal of variable rate contract, at emergency, bypassing vault
     * @param variableRate the variable rate contract to withdraw
     * @param amount the amount of principal to withdraw
     */
    function withdrawVariableRate(address variableRate, uint256 amount) external nonReentrant {
        // caller must be owner
        require(variableRateContracts[variableRate] == msg.sender, "WrapMint: unauthorized");

        // use variable rate contract to withdraw
        VariableRate(variableRate).withdraw(amount);

        // transfer the underlying to sender
        IYieldStrippedToken(TOKEN).unwrapTo(amount, msg.sender);

        // must burn the principal amount of asset token
        DuoAssetToken(duoAssetToken).burnFrom(msg.sender, amount);
    }

    /*==============================================================
                     Transfer In V1 Fixed Rate NFT
    ==============================================================*/

    /**
     * @notice transfer in a fixed rate NFT, receiving principal and yield as asset token
     * @param tokenId the id of the fixed rate NFT
     * @return principal the principal amount of asset token
     * @return yield the yield amount of asset token
     */
    function transferInFixedRateNft(uint256 tokenId) external nonReentrant returns (uint256 principal, uint256 yield) {
        // transfer the NFT to this contract
        IERC721(fixedRateNft).safeTransferFrom(msg.sender, address(this), tokenId);

        // mark the ownership of fixed rate NFT
        fixedRateNfts[tokenId] = msg.sender;

        // read principal and yield from NFT
        principal = FixedRate(FixedRateNFT(fixedRateNft).fixedRateContracts(tokenId)).principal();
        yield = FixedRate(FixedRateNFT(fixedRateNft).fixedRateContracts(tokenId)).yield();

        // mint asset token to sender
        DuoAssetToken(duoAssetToken).mint(msg.sender, principal + yield);
    }

    /*==============================================================
                     Transfer Out V1 Fixed Rate NFT
    ==============================================================*/

    /**
     * @notice transfer out a fixed rate NFT, burning principal and yield as asset token
     * @param tokenId the id of the fixed rate NFT
     * @return principal the principal amount of asset token
     * @return yield the yield amount of asset token
     */
    function transferOutFixedRateNft(uint256 tokenId) external nonReentrant returns (uint256 principal, uint256 yield) {
        // caller must be owner
        require(fixedRateNfts[tokenId] == msg.sender, "WrapMint: unauthorized");

        // read principal and yield from NFT
        principal = FixedRate(FixedRateNFT(fixedRateNft).fixedRateContracts(tokenId)).principal();
        yield = FixedRate(FixedRateNFT(fixedRateNft).fixedRateContracts(tokenId)).yield();

        // burn the principal and yield of asset token
        DuoAssetToken(duoAssetToken).burnFrom(msg.sender, principal + yield);

        // transfer the NFT to sender
        IERC721(fixedRateNft).safeTransferFrom(address(this), msg.sender, tokenId);

        // clear the ownership of fixed rate NFT
        fixedRateNfts[tokenId] = address(0);
    }

    /*==============================================================
                    Transfer In V1 Variable Rate NFT
    ==============================================================*/

    /**
     * @notice transfer in a variable rate NFT, receiving amount as asset token
     * @param tokenId the id of the variable rate NFT
     * @return principal the principal amount of asset token
     */
    function transferInVariableRateNft(uint256 tokenId) external nonReentrant returns (uint256 principal) {
        // transfer the NFT to this contract
        IERC721(variableRateNft).safeTransferFrom(msg.sender, address(this), tokenId);

        // mark the ownership of variable rate NFT
        variableRateNfts[tokenId] = msg.sender;

        // read principal amount from NFT
        principal = VariableRate(VariableRateNFT(variableRateNft).variableRateContracts(tokenId)).principal();

        // mint asset token to sender
        DuoAssetToken(duoAssetToken).mint(msg.sender, principal);
    }

    /*==============================================================
                    Transfer Out V1 Variable Rate NFT
    ==============================================================*/

    /**
     * @notice transfer out a variable rate NFT, burning amount as asset token
     * @param tokenId the id of the variable rate NFT
     * @return principal the amount of asset token
     */
    function transferOutVariableRateNft(uint256 tokenId) external nonReentrant returns (uint256 principal) {
        // caller must be owner
        require(variableRateNfts[tokenId] == msg.sender, "WrapMint: unauthorized");

        // read principal amount from NFT
        principal = VariableRate(VariableRateNFT(variableRateNft).variableRateContracts(tokenId)).principal();

        // burn the amount of asset token
        DuoAssetToken(duoAssetToken).burnFrom(msg.sender, principal);

        // transfer the NFT to sender
        IERC721(variableRateNft).safeTransferFrom(address(this), msg.sender, tokenId);

        // clear the ownership of variable rate NFT
        variableRateNfts[tokenId] = address(0);
    }

    /*==============================================================
                             Admin Control
    ==============================================================*/

    function addExchange(address exchange) external onlyGovernor {
        whitelistedExchanges[exchange] = true;
        emit UpdateExchange(exchange, true);
    }

    function removeExchange(address exchange) external onlyGovernor {
        whitelistedExchanges[exchange] = false;
        emit UpdateExchange(exchange, false);
    }

    function setFixedRateNft(address nft) external onlyGovernor {
        fixedRateNft = nft;
        emit UpdateFixedRateNft(nft);
    }

    function setVariableRateNft(address nft) external onlyGovernor {
        variableRateNft = nft;
        emit UpdateVariableRateNft(nft);
    }

    function setDuoAssetToken(address token) external onlyGovernor {
        duoAssetToken = token;
        emit UpdateDuoAssetToken(token);
    }

    /*==============================================================
                             Token Receiver
    ==============================================================*/

    function onERC721Received(address, address, uint256, bytes calldata) external pure override returns (bytes4) {
        return this.onERC721Received.selector;
    }

    receive() external payable {}
}
