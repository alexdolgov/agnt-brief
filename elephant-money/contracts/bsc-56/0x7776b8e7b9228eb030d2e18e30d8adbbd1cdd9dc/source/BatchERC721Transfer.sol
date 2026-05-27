/**
 *Submitted for verification at BscScan.com on 2022-02-17
*/

/**
 *Submitted for verification at BscScan.com on 2022-02-17
*/

pragma solidity 0.6.9;
pragma experimental ABIEncoderV2;

interface IERC721 {
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;
} 

contract BatchERC721Transfer {

    function batchTransfer(
        address erc721Address,
        address[] memory tos,
        uint256[] memory ids
    ) public {
        require(tos.length == ids.length, "PARAM_NOT_MATCH");
        for (uint8 i = 0; i < ids.length; i++) {
            IERC721(erc721Address).safeTransferFrom(msg.sender,tos[i],ids[i]);
        }
    }

    function batchTransfer2(
        address erc721Address,
        address to,
        uint256[] memory ids
    ) public {
        for (uint8 i = 0; i < ids.length; i++) {
            IERC721(erc721Address).safeTransferFrom(msg.sender,to,ids[i]);
        }
    }

    function batchTransfer3(
        address erc721Address,
        address to,
        uint256[] memory ids
    ) public {
        for (uint8 i = 0; i < ids.length; i++) {
            IERC721(erc721Address).transferFrom(msg.sender,to,ids[i]);
        }
    }

    function batchTransfer4(
        address erc721Address,
        address[] memory tos,
        uint256[] memory ids
    ) public {
        require(tos.length == ids.length, "PARAM_NOT_MATCH");
        for (uint8 i = 0; i < ids.length; i++) {
            IERC721(erc721Address).transferFrom(msg.sender,tos[i],ids[i]);
        }
    }
}