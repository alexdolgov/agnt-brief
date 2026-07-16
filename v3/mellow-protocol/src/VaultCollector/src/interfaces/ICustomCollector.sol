// SPDX-License-Identifier: BSL-1.1
pragma solidity 0.8.25;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol";

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../../lib/mellow-lrt/src/interfaces/IVault.sol";
import "../../lib/mellow-lrt/src/interfaces/oracles/IChainlinkOracle.sol";

interface ICustomCollector {
    function balanceOf(
        address vault,
        address[] memory users,
        bytes memory data
    ) external view returns (address, uint256[] memory);
}
