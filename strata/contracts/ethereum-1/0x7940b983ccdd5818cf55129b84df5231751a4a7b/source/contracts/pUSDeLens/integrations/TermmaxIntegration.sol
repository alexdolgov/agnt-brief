pragma solidity ^0.8.22;

import { IIntegration } from "../Interfaces.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";


interface ITermmaxGT {
    function balanceOf(address owner) external view returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 idx) external view returns (uint256);
    function loanInfo(uint256 tokenId) external view returns (address, uint128, bytes memory);
}

contract TermmaxIntegration is IIntegration {

    string public name = "Termmax Integration";

    ITermmaxGT public constant GT = ITermmaxGT(0x52dB35C0A4cC409DA1e409F309f3771441c02Ab1);

    function balanceOf(address owner) external view returns (uint256) {
        uint nfts = GT.balanceOf(owner);
        uint balance = 0;
        for (uint i = 0; i < nfts; i++) {
            uint tokenId = GT.tokenOfOwnerByIndex(owner, i);
            (address _owner, uint _debtAmt, bytes memory collateralData) = GT.loanInfo(tokenId);

            uint256 collateralAmount = abi.decode(collateralData, (uint256));
            balance += collateralAmount;
        }
        return balance;
    }
}
