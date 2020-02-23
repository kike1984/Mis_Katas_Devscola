

class Monedas

  def cantidad_de_euros(dinero)
    @dinero = dinero.to_f

    devolver_cantidad_minima_de_monedas
  end

private

  MONEDAS_EURO = {
    200 => "2 €",
    100 => "1 €",
    50  => "50 centimos",
    20  => "20 centimos", 
    10  => "10 centimos",
    5   => "5 centimos",
    2   => "2 centimos",
    1   => "1 centimo"
  }

  def devolver_cantidad_minima_de_monedas
    dinero_en_centimos = pasar_todo_el_dinero_a_centimos
    devolucion = []

    MONEDAS_EURO.each do |moneda, valor_de_la_moneda|
      @moneda = moneda
      if dinero_en_centimos > cuatro_euros
        dinero_en_centimos -= moneda * cantidad_de_monedas
        devolucion << "#{cantidad_de_monedas} de #{valor_de_la_moneda}"
      end
      if dinero_en_centimos >= dos_monedas_del_mismo_valor
        dinero_en_centimos -= dos_monedas_del_mismo_valor
        devolucion << "2 de #{valor_de_la_moneda}"
      end
      if dinero_en_centimos >= moneda
        dinero_en_centimos -= moneda
        devolucion << "1 de #{valor_de_la_moneda}"
      end
    end
    devolucion.join(', ')
  end

  def dos_monedas_del_mismo_valor
    @moneda * 2
  end

  def cuatro_euros
    400
  end

  def cantidad_de_monedas
    @dinero.to_i / 2
  end

  def pasar_todo_el_dinero_a_centimos
    @dinero * 100
  end

end