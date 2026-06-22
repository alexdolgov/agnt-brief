pragma solidity >=0.5.0;

interface IHyperswapFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint256);

    function owner() external view returns (address);
    function feePercentOwner() external view returns (address);
    function setStableOwner() external view returns (address);
    function setSetStableOwner(address _setStableOwner) external;
    function setOwner(address _owner) external;
    function feeTo() external view returns (address);

    function ownerFeeShare() external view returns (uint256);
    function referrersFeeShare(address) external view returns (uint256);
    function setReferrerFeeShare(address referrer, uint referrerFeeShare) external;

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint256) external view returns (address pair);
    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function feeInfo() external view returns (uint _ownerFeeShare, address _feeTo);
}
