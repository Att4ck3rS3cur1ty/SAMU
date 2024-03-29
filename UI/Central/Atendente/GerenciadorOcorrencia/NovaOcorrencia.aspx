﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovaOcorrencia.aspx.cs" Inherits="Central.Atendente.GerenciadorOcorrencia.NovaOcorrencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Ocorrências</a></li>
                <li class="active">Nova Ocorrência</li>
            </ol>
    </div>
    
    <!-- Body da Ocorrência -->
    <div id="ocorr-body">
    <a class="titulosinput">Tipo de Ocorrência:</a> <asp:TextBox ID="TextBoxTipo" runat="server" /> <br />
    <a class="titulosinput">Nome do Solicitante:</a> <asp:TextBox CssClass="inputs" ID="TextBoxNomeSolicitante" runat ="server" /> <br />
    <a class="titulosinput">Nome da(s) Vítima(s):</a> <asp:TextBox CssClass="inputs" ID="TextBoxNomeNomeVitima" runat ="server" /> <br />
    <a class="titulosinput">Quantidade de Vítimas:</a> <asp:TextBox CssClass="inputs" ID="TextBoxQuantidaVitimas" runat ="server" /> <br />
    <a class="titulosinputask">O que vai informar?</a>
    <asp:RadioButtonList Style="margin:0 auto;" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Value="CEP">Informar CEP</asp:ListItem>
        <asp:ListItem Value="Nomes">Informar Nomes</asp:ListItem>
    </asp:RadioButtonList> <br />
    <asp:Label ID="LabelCEP" runat="server" Text="CEP:" Visible="false"/> <asp:TextBox ID="TextBoxCEP" runat="server" Visible="false" AutoPostBack="True" OnTextChanged="TextBoxCEP_TextChanged"/> <asp:Label Id="LabelAvisoCep" runat="server" /><br />
    <asp:Label ID="LabelCidade" runat="server" Text="Cidade:" Visible="false"/> <asp:TextBox ID="TextBoxCidade" runat="server" Visible="false"/> <br />
    <asp:Label ID="LabelBairro" runat="server" Text="Nome da Bairro:" Visible="false"/> <asp:TextBox ID="TextBoxBairro" runat="server" Visible="false"/> <br />
    <asp:Label ID="LabelRua" runat="server" Text="Nome da Rua:" Visible="false"/> <asp:TextBox ID="TextBoxRua" runat="server" Visible="false"/> <br />
    <asp:Label ID="LabelNumeroResidencia" runat="server" Text="Número da Residencia:" Visible="false"/> <asp:TextBox ID="TextBoxNumeroResidencia" runat="server" Visible="false"/> <br />
    <div class="divtitulosinputask">
        <a class="titulosinputask">Informação Adicional</a>
    </div>
    <asp:TextBox CssClass="inputs" ID="TextBoxInfAdicional" runat ="server" TextMode="MultiLine" Height="156px" Width="360px" />	  <br />  
    <div class="botoes-ocorrencia">
        <asp:Button id="ButtonLimpar" class="buttonocorr" Text="Limpar" runat="server"/>
        <asp:Button id="ButtonConfirar" class="buttonocorr" runat="server" Text="Confirmar" OnClick="ButtonConfirar_Click"/><br />
    </div>
    <div class="divtitulosinputask">
        <asp:Label ID="titulosinputask" runat="server"  Text="Deseja Realizar um Chamado?" Visible="false"/><br />
    </div>
    <div class="confchamado botoes-ocorrencia">
    <asp:Button ID="ButtonSim" class="buttonocorr" runat="server" Text="Sim" visible="false" OnClick="ButtonSim_Click"/>
    <asp:Button ID="ButtonNao" class="buttonocorr" runat="server" Text="Não" visible="false" OnClick="ButtonNao_Click"/>
    </div>
        </div>
</asp:Content>
