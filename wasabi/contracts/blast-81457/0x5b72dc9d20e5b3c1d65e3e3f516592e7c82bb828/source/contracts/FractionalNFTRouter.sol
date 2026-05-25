// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IDN404Mirror} from "./interfaces/IDN404Mirror.sol";
import {IDN404} from "./interfaces/IDN404.sol";
import {ISwapRouter} from "./interfaces/ISwapRouter.sol";
import "./interfaces/IWETH.sol";
import {IFractionalNFTRouter} from "./interfaces/IFractionalNFTRouter.sol";

import "./blast/AbstractBlastContract.sol";

/// @notice A router contract that allows selling of DN404 fractionalized NFTs into Thruster
contract FractionalNFTRouter is IFractionalNFTRouter, OwnableUpgradeable, UUPSUpgradeable, AbstractBlastContract, IERC721Receiver {
    error InvalidContractAddress();
    error InsufficientNFTs();
    error EthTransferFailed();

    event NFTSold(
        address nftAddress,
        uint256[] ids,
        uint256 amountOut,
        address tokenOut
    );

    address public swapRouter;
    address public weth;

    /// @dev Initializes the contract
    /// @param _swapRouter The address of the Thruster router
    /// @param _weth The address of the WETH contract
    function initialize(address _swapRouter, address _weth) public virtual initializer {
        __Ownable_init(msg.sender);
        __AbstractBlastContract_init();
        _configurePointsOperator(msg.sender);
        swapRouter = _swapRouter;
        weth = _weth;
    }

    /// @dev Authorizes an upgrade
    function _authorizeUpgrade(address) internal override onlyOwner {}

    /// @dev Sets the points operator for the contract
    function setPointsOperator(address operator) public onlyOwner {
        _configurePointsOperator(operator);
    }

    /// @inheritdoc IFractionalNFTRouter
    function sellFractionalizedNFTs(
        address contractAddress,
        uint256[] calldata ids,
        uint24 poolFee,
        uint256 deadline,
        uint256 amountOutMin
    ) external payable {
        IDN404Mirror nft = IDN404Mirror(contractAddress);
        IDN404 token = IDN404(nft.baseERC20());    

        // 1. Check if the contract address is valid
        if (token.mirrorERC721() != contractAddress) revert InvalidContractAddress();

        // 2. Transfer NFTs to the contract
        uint256 numNFTs = ids.length;
        if (numNFTs == 0) revert InsufficientNFTs();

        for (uint256 i = 0; i < numNFTs; i++) {
            nft.safeTransferFrom(msg.sender, address(this), ids[i]);
        }

        // 3. UnLock the NFTs
        nft.updateLockState(ids, false);


        // 4. Sell the NFTs
        uint256 amount = token.balanceOf(address(this));
        token.approve(swapRouter, amount);
        
        ISwapRouter router = ISwapRouter(swapRouter);
        uint256 amountOut = router.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: address(token),
                tokenOut: weth,
                fee: poolFee,
                recipient: address(this),
                deadline: deadline,
                amountIn: amount,
                amountOutMinimum: amountOutMin,
                sqrtPriceLimitX96: 0
            })
        );

        // 4. Transfer the amount received to the user
        IWETH(weth).withdraw(amountOut);
        _transferEth(msg.sender, amountOut);

        emit NFTSold(contractAddress, ids, amountOut, weth);
    }

    /// @dev withdraws any stuck ERC20 tokens
    function withdraw(address contractAddress) public onlyOwner {
        SafeERC20.safeTransfer(IERC20(contractAddress), msg.sender, IERC20(contractAddress).balanceOf(address(this)));
    }

    /// @dev withdraws any stuck ETH
    function withdrawETH() public onlyOwner {
        _transferEth(msg.sender, address(this).balance);
    }

    /// @inheritdoc IERC721Receiver
    function onERC721Received(address, address, uint256, bytes memory)
        public
        pure
        virtual
        returns (bytes4)
    {
        return this.onERC721Received.selector;
    }

    function _transferEth(address _target, uint256 _amount) internal {
        (bool sent, ) = payable(_target).call{value: _amount}("");
        if (!sent) {
            revert EthTransferFailed();
        }
    }

    receive() external payable virtual {}
}
