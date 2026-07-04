pragma solidity ^0.8.25;

interface ICreditStrategyLike {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function incrementCreditDeployed(uint256 tokenId, uint256 amount) external returns (bool);
}
