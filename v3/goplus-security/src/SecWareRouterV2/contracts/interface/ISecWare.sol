// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "@openzeppelin/contracts/interfaces/IERC20.sol";

interface ISecWare {
    struct ServiceInfo {
        uint24 serviceId; // service id 
        bool active; // product is active
        bool autoRenew; // product is auto renew
        IERC20 paymentToken; 
        uint256 price; 
        uint256 period; //period of validity, such as 30 * 86400
        string secWareType; // service type
        string metadata; // Other information, such as JSON strings or IPFS hash
    }

    function  expirations(address secHub, uint24 serviceId) external view returns (uint256 expiration);

    function subscribe(
        uint24 prodId,
        address userSecHub
    ) external returns (uint256 expiration);

    function getServiceInfo(
        uint24 prodId
    ) external view returns (ServiceInfo memory);

    function onTransferred(address newOwner) external;
}
