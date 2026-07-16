// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract MultiSender is ReentrancyGuard {
    using SafeERC20 for IERC20;

    struct SendRequest {
        address payable to;
        uint256 amount;
    }

    struct NFTSendRequest {
        address payable to;
        uint256[] ids;
    }

    error BaseTokenAmountMismatch(
        uint256 totalRequestAmount,
        uint256 valueFromSender
    );

    // send tokens from msg.sender to "to" of sendRequests
    function sendERC20(
        address tokenAddress,
        SendRequest[] calldata sendRequests
    ) external {
        IERC20 token = IERC20(tokenAddress);
        for (uint256 i = 0; i < sendRequests.length; i++) {
            token.safeTransferFrom(
                msg.sender,
                sendRequests[i].to,
                sendRequests[i].amount
            );
        }
    }

    // send base tokens from msg.sender to "to" of sendRequests
    function sendBaseToken(SendRequest[] calldata sendRequests)
        external
        payable
        nonReentrant
    {
        uint256 totalRequestAmount = 0;
        for (uint256 i = 0; i < sendRequests.length; i++) {
            totalRequestAmount += sendRequests[i].amount;
            Address.sendValue(sendRequests[i].to, sendRequests[i].amount);
        }
        if (totalRequestAmount != msg.value) {
            revert BaseTokenAmountMismatch(totalRequestAmount, msg.value);
        }
    }

    // send erc721 tokens from msg.sender to "to" of sendRequests
    function sendERC721(
        address tokenAddress,
        NFTSendRequest[] calldata sendRequests
    ) external {
        IERC721 token = IERC721(tokenAddress);
        for (uint256 i = 0; i < sendRequests.length; i++) {
            address to = sendRequests[i].to;
            uint256[] memory ids = sendRequests[i].ids;
            uint256 idLength = ids.length;
            for (uint256 j = 0; j < idLength; j++) {
                token.safeTransferFrom(msg.sender, to, ids[j]);
            }
        }
    }

    // burn ERC721Burnable tokens from msg.sender
    function burnERC721(address tokenAddress, uint256[] memory ids) external {
        ERC721Burnable token = ERC721Burnable(tokenAddress);
        for (uint256 i = 0; i < ids.length; i++) {
            require(token.ownerOf(ids[i]) == msg.sender, "not owner");
            token.burn(ids[i]);
        }
    }
}
