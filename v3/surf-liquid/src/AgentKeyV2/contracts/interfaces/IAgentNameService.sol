// SPDX-License-Identifier: Unlicense
pragma solidity =0.8.27;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "contracts/lib/EIP712Lib.sol";

/// @title Interface for AgentNameService.
interface IAgentNameService is IERC721 {
    function create(
        EIP712Lib.Signature calldata _signature
    ) external payable returns (uint256 tokenID);

    function setToken(address _token, uint256 _tokenID) external;

    function isAgentKey(address _token) external view returns (bool);

    function cost() external view returns (uint256);

    function tokenSymbol(uint256 _tokenID) external view returns (string memory);
}
