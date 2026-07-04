// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "./IPriceOracle.sol";

interface ISecWareFactory {
    function secWaresProviders(
        address secWare
    ) external view returns (address _provider);

    function providerSecWares(
        address provider
    ) external view returns (address _secWare);

    function isCertified(address secWare) external view returns (bool);

    function revenuePool() external view returns (address _revenuePool);

    function feeTo() external view returns (address _feeTo);

    function router() external view returns (address _router);
    function oracle() external view returns (IPriceOracle _oracle);

    function getOfficalFee(
        address secWare,
        uint256 amount
    ) external view returns (uint256 officalFee);

    function isSecWareActive(
        address secWare
    ) external view returns (bool active);
}
