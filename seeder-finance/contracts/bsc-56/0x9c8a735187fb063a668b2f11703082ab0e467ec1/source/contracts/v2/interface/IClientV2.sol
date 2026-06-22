// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "../../v1/interface/IClient.sol";

interface IClientV2 is IClient {
    function onBurnableTreeReceived(uint256 requestId, uint256 availbleTree) external returns (bool isCompleted);
}
