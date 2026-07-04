// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Addresses {

    // Mainnet
    address public constant WETH = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public constant CAKE = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    address public constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address public constant LISUSD = 0x0782b6d8c4551B9760e74c0545a9bCD90bdc41E5;
    address public constant SHELL = 0xf2c88757f8d03634671208935974B60a2a28Bdb3;
    address public constant USD1 = 0x8d0D000Ee44948FC98c9B98A4FA4921476f08B0d;
    address public constant THENA = 0xF4C8E32EaDEC4BFe97E0F595AdD0f4450a863a11;
    address public constant FORM = 0x5b73A93b4E5e4f1FD27D8b3F8C97D69908b5E284;
    address public constant UUSD = 0x61a10E8556BEd032eA176330e7F17D6a12a10000;
    address public constant BIANRENSHENG = 0x924fa68a0FC644485b8df8AbfA0A41C2e7744444;
    address public constant USTABLES = 0xcE24439F2D9C6a2289F741120FE202248B666666;

    address public constant PANCAKE_FACTORY = 0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73;
    address public constant PANCAKE_ROUTER = 0x10ED43C718714eb63d5aA57B78B54704E256024E;
    address public constant PANCAKE_V3_FACTORY = 0x0BFbCF9fa4f9C56B0F40a671Ad40E0805A091865;
    address public constant PANCAKE_POSITION_MANAGER = 0x46A15B0b27311cedF172AB29E4f4766fbE7F4364;
    address public constant PANCAKE_QUOTER_V2 = 0xB048Bbc1Ee6b733FFfCFb9e9CeF7375518e25997;
    address public constant ALGEBRA_FACTORY = 0x306F06C147f064A010530292A1EB6737c3e378e4;
    address public constant LP_LOCKER = 0x25c9C4B56E820e0DEA438b145284F02D9Ca9Bd52;

    address public constant TOKEN_MANAGER = 0xEC4549caDcE5DA21Df6E6422d448034B5233bFbC;
    address public constant TOKEN_MANAGER_2 = 0x5c952063c7fc8610FFDB798152D69F0B9550762b;
    address public constant WHITE_LIST = 0xA285353bfd31Fc949D37305D5610D0EF7F378Cf9;
    address public constant FEE_RECIPIENTS = 0x5042c0fD01AdB0e068687297CAa9A160F453CDd2;
    address public constant TOKEN_SWAP = 0x350A94c918f7A0C8d108ba90f1b242B0143572B9;
    address public constant TOKEN_SWAP_2 = 0x53Fc1F9299d81d5c6B1EE860B4254d114B916BB1;
    address public constant BN_SIGNATURE_VERIFYING = 0xC08B61897B0a21B5204Ec2e883640DE76E3f4eaA;
    address public constant TRADING_FEES = 0x293Ef5443aa687D5294aa40B9236aA192E94A310;
    address public constant LAUNCH_FEE = 0xd876272002EceC9b11045EEF4481C91A4E5BB130;
    address public constant TOKEN_CREATOR_3 = 0x757eba15a64468e6535532fcF093Cef90e226F85;
    address public constant TOKEN_CREATOR_4 = 0xC6496E138aF13c0026E14Ffbd32eae6764EAb8B2;
    address public constant TOKEN_CREATOR_5 = 0x170665cf90186cCb5EAb7633678b8726760522E7;
    address public constant TOKEN_CREATOR_6 = address(0);
    address public constant TOKEN_CREATOR_7 = address(0);
    address public constant TOKEN_CREATOR_8 = address(0);
    address public constant TOKEN_HELPER_5 = 0x1d09D9979CB6f7A1c80D4B1604e3F4cE2130e41b;
    address public constant SHARE_HOLDER_MANAGER = 0x19563730740D8d43CaB449D0F880548128FacFe7;
    address public constant DEVELOPER = 0xBff03c2DFCFA672334211a574442f38C4c841935;
    address public constant AGENT_IDENTIFIER = 0x09B44A633de9F9EBF6FB9Bdd5b5629d3DD2cef13;
    address public constant LP_FEE_MANAGER = address(0);
    address public constant TRADING_SETTINGS = 0xbf7B46eBc99aB01D08dfC77A8D64e6398ABD37ef;

    /* Testnet
    address public constant WETH = 0xae13d989daC2f0dEbFf460aC112a837C89BAa7cd;
    address public constant CAKE = 0x58d34053986dA0Ab99C03a02467f2B62A78be0EF;
    address public constant USDT = 0x5ef87aFd66B1f85e891628C1c76Ac5F2541e4779;
    address public constant LISUSD = 0x0782b6d8c4551B9760e74c0545a9bCD90bdc41E5;
    address public constant SHELL = 0xf2c88757f8d03634671208935974B60a2a28Bdb3;
    address public constant USD1 = 0x466d8464536d36ADA0334FE54E3De776FB7181eA;
    address public constant THENA = 0xF4C8E32EaDEC4BFe97E0F595AdD0f4450a863a11;
    address public constant FORM = 0xAc6C24C8f7E8D04ac139dC3d47c5F850E20Eab82;
    address public constant UUSD = 0xCA1207eE4436E27F26257C27566F8F3EE4F2Ab5c;
    address public constant BIANRENSHENG = 0x0B4358a88bAcDF274E1E2611133A9d414A96ea0c;
    address public constant USTABLES = 0x5d3849562732760a24cE1Cd3CaE4a4230Ac8f933;

    address public constant PANCAKE_FACTORY = 0x6725F303b657a9451d8BA641348b6761A6CC7a17;
    address public constant PANCAKE_ROUTER = 0xD99D1c33F9fC3444f8101754aBC46c52416550D1;
    address public constant PANCAKE_V3_FACTORY = 0x0BFbCF9fa4f9C56B0F40a671Ad40E0805A091865;
    address public constant PANCAKE_POSITION_MANAGER = 0x427bF5b37357632377eCbEC9de3626C71A5396c1;
    address public constant PANCAKE_QUOTER_V2 = 0xbC203d7f83677c7ed3F7acEc959963E7F4ECC5C2;
    address public constant ALGEBRA_FACTORY = 0x306F06C147f064A010530292A1EB6737c3e378e4;
    address public constant LP_LOCKER = 0x25c9C4B56E820e0DEA438b145284F02D9Ca9Bd52;

    address public constant TOKEN_MANAGER = 0xaA89Da6EA5a9AC1e1722145Fecc28B679eE2fAdA;
    address public constant TOKEN_MANAGER_2 = 0x4347Ae835b45b82B317Cd14C6A3dd9D707F6D967;
    address public constant WHITE_LIST = 0x0E15b158e2a19C519835C9D7E75bf38dC2c23e12;
    address public constant FEE_RECIPIENTS = 0x68C88F107773D7029c83785EDBe84319D016C1f6;
    address public constant TOKEN_SWAP = 0x821D4a8fbd05F18dA35e5a3000310ede21aCc791;
    address public constant TOKEN_SWAP_2 = 0xF4fcE7F4C13dC6A7E2F0fF876c8c130045a581a6;
    address public constant BN_SIGNATURE_VERIFYING = address(0);
    address public constant TRADING_FEES = 0xAaC7F8cE8eBe4bC0Ee987aaC30b2bd05fd0303cF;
    address public constant LAUNCH_FEE = 0xf1093583f12C35C41e0B6d69d709b5C8082a1764;
    address public constant TOKEN_CREATOR_3 = 0xFbAD4Cb85c411041B136D2Bd0D6Eb43357711903;
    address public constant TOKEN_CREATOR_4 = 0xDeaFD65e7DBA9F1DdEddB21C27d345C03313a553;
    address public constant TOKEN_CREATOR_5 = 0x0778fa19fc931eF1Bc4b0438e2CE3913e6D03DA4;
    address public constant TOKEN_CREATOR_6 = address(0);
    address public constant TOKEN_CREATOR_7 = 0xeb0e33236A407714f97eb157a189C2530ee8871C;
    address public constant TOKEN_CREATOR_8 = 0xC72F66c11E2F9879f5651E1940f92eFAdB1e73dd;
    address public constant TOKEN_HELPER_5 = 0xc42245D576B1Ffa62688430D8d6077DA1Eb9ef21;
    address public constant SHARE_HOLDER_MANAGER = 0xE448f3522Fc4771c4bDf219b75d66Db44a1A13ad;
    address public constant DEVELOPER = 0xc9fc6362e6627bC981368C5284fe71de814408BB;
    address public constant AGENT_IDENTIFIER = 0xA0A58536f788A53529617f8F43fE7364e14b19A0;
    address public constant LP_FEE_MANAGER = 0x8Dd5364442F7FA05E310FB86B4e044203E467b83;
    address public constant TRADING_SETTINGS = 0x6189a28638f829Ca1529D3cA0a315FF9E8Cd7CF4;
    */
}