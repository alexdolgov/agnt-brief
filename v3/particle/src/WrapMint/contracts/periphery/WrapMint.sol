// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {Multicall} from "../../lib/openzeppelin-contracts/contracts/utils/Multicall.sol";
import {Ownable2Step} from "../../lib/openzeppelin-contracts/contracts/access/Ownable2Step.sol";
import {SafeERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC721} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC721.sol";
import {IERC721Receiver} from "../../lib/openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IYieldStrippedToken} from "../interfaces/IYieldStrippedToken.sol";
import {BlastManager} from "../libraries/BlastManager.sol";
import {FixedRateNFT} from "./FixedRateNFT.sol";
import {VariableRateNFT} from "./VariableRateNFT.sol";

address constant WETH = 0x4300000000000000000000000000000000000004;

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
}

contract WrapMint is IERC721Receiver, ReentrancyGuard, Multicall, Ownable2Step, BlastManager {
    using SafeERC20 for IERC20;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    address public VAULT;

    /* Variable */
    address public fixedRateNft;
    address public variableRateNft;

    /* Storage */
    mapping(address => bool) public whitelistedExchanges;

    /* Events */
    event UpdateExchange(address exchange, bool status);
    event UpdateFixedRateNft(address nft);
    event UpdateVariableRateNft(address nft);

    constructor(address token, address vault) {
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
    ) external nonReentrant returns (uint256 id, address fixedRateContract, uint256 amountOut, uint256 lockedYield) {
        // transfer input amount
        IERC20(token).safeTransferFrom(msg.sender, address(this), amountIn);

        (id, fixedRateContract, amountOut, lockedYield) = _mintFixedRate(
            exchange,
            token,
            amountIn,
            amountOutMin,
            minLockedYield,
            data
        );

        // refund remaining
        if (IERC20(token).balanceOf(address(this)) > 0) {
            IERC20(token).safeTransfer(msg.sender, IERC20(token).balanceOf(address(this)));
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
    )
        external
        payable
        nonReentrant
        returns (uint256 id, address fixedRateContract, uint256 amountOut, uint256 lockedYield)
    {
        // wrap to WETH
        require(msg.value == amountIn, "WrapMint: insufficient ETH");
        IWETH(WETH).deposit{value: amountIn}();

        (id, fixedRateContract, amountOut, lockedYield) = _mintFixedRate(
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
     * @return id the id of the fixed rate NFT
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
    ) internal returns (uint256 id, address fixedRateContract, uint256 amountOut, uint256 lockedYield) {
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

        // approve wrapped token spending to fixed rate NFT
        IERC20(TOKEN).approve(fixedRateNft, amountOut);

        // mint fixed rate NFT
        (id, fixedRateContract, lockedYield, ) = FixedRateNFT(fixedRateNft).mint(amountOut, minLockedYield);

        // approve wrapped token spending back to zero
        IERC20(TOKEN).approve(fixedRateNft, 0);

        // transfer NFT to sender
        IERC721(fixedRateNft).safeTransferFrom(address(this), msg.sender, id);
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
    ) external nonReentrant returns (uint256 id, address variableRateContract, uint256 amountOut) {
        // transfer input amount
        IERC20(token).safeTransferFrom(msg.sender, address(this), amountIn);

        (id, variableRateContract, amountOut) = _mintVariableRate(exchange, token, amountIn, amountOutMin, data);

        // refund remaining
        if (IERC20(token).balanceOf(address(this)) > 0) {
            IERC20(token).safeTransfer(msg.sender, IERC20(token).balanceOf(address(this)));
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
    ) external payable nonReentrant returns (uint256 id, address variableRateContract, uint256 amountOut) {
        // wrap to WETH
        require(msg.value == amountIn, "WrapMint: insufficient ETH");
        IWETH(WETH).deposit{value: amountIn}();

        (id, variableRateContract, amountOut) = _mintVariableRate(exchange, WETH, amountIn, amountOutMin, data);

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
     * @return id the id of the variable rate NFT
     * @return variableRateContract the address of the variable rate contract
     * @return amountOut the amount of token received
     */
    function _mintVariableRate(
        address exchange,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata data
    ) internal returns (uint256 id, address variableRateContract, uint256 amountOut) {
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
        IERC20(TOKEN).approve(variableRateNft, amountOut);

        // mint variable rate contract
        (id, variableRateContract) = VariableRateNFT(variableRateNft).mint(amountOut);

        // approve spending back to zero
        IERC20(TOKEN).approve(variableRateNft, 0);

        // transfer NFT to sender
        IERC721(variableRateNft).safeTransferFrom(address(this), msg.sender, id);
    }

    /*==============================================================
                             Admin Control
    ==============================================================*/

    function addExchange(address exchange) external onlyOwner {
        whitelistedExchanges[exchange] = true;
        emit UpdateExchange(exchange, true);
    }

    function removeExchange(address exchange) external onlyOwner {
        whitelistedExchanges[exchange] = false;
        emit UpdateExchange(exchange, false);
    }

    function setFixedRateNft(address nft) external onlyOwner {
        fixedRateNft = nft;
        emit UpdateFixedRateNft(nft);
    }

    function setVariableRateNft(address nft) external onlyOwner {
        variableRateNft = nft;
        emit UpdateVariableRateNft(nft);
    }

    /*==============================================================
                             Token Receiver
    ==============================================================*/

    function onERC721Received(address, address, uint256, bytes calldata) external pure override returns (bytes4) {
        return this.onERC721Received.selector;
    }

    receive() external payable {}
}
