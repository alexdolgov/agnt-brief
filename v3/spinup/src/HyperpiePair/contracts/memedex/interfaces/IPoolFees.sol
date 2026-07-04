// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPoolFees {

    event UpdatedHyperpieConfig(address indexed hyperpieConfig);

    error NotPool();
    error InvalidFees();
    error NotLaunchpad();
    error TransferFailed();
    error InvalidToken();

    function collectFee(address _token, uint256 _amount) external;

    /// @notice Address of Minter.sol
    function claimFeesFor(address _recipient, uint256 _amount0, uint256 _amount1) external;

    function lpRevShareBPS() external view returns (uint256 lpRevBps);
    function setCreatorAndMeme(bool _meme, address _creator) external;
}
