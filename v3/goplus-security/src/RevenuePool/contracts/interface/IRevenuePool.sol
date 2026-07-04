// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "./ISecWare.sol";

interface IRevenuePool {
    function onSale(ISecWare.ServiceInfo calldata info, address secWare, address secHub) external returns (bool);

    function onSanction(
        address secWare,
        address receiver
    ) external;
}
