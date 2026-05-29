pragma solidity ^0.8.10;

import {Viewer} from "src/common/Viewer.sol";

interface IRateProvider {
    /**
     * @dev Returns an 18 decimal fixed point number that is the exchange rate of the token to some other underlying
     * token. The meaning of this rate depends on the context.
     */
    function getRate() external view returns (uint256);
    /**
     * @notice update the viewer
     */
    function updateViewer(Viewer _viewer) external;
}
